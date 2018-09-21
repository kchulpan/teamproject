package com.spring.pds.controller;


import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.files.vo.FilesVo;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;
import com.spring.pds.service.PdsService;
import com.spring.pds.vo.PdsVo;
import com.spring.user.service.UserService;
import com.spring.user.vo.UserVo;



@Controller
public class PdsController 
{	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private PdsService pdsService;
	
	@RequestMapping("/PDS/List")
	public ModelAndView pdsList(
			@RequestParam HashMap<String, Object> map)
	{
		//map:{menu_id:'MENU01'}
		//map:{nowpage:1}
		//map:{pagecount:2}
		//map:{pagegrpnum:1}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu_id", map.get("menu_id"));
		
		List<MenuVo> menuList = menuService.getMenuList();
		mav.addObject("menuList", menuList);
		
		List<PdsVo> pdsList = pdsService.getPdsList(map);
		mav.addObject("pdsList", pdsList);
		
		PdsVo pagePdsVo = (PdsVo) map.get("pagePdsVo");
		mav.addObject("pagePdsVo", pagePdsVo);
		
		mav.setViewName("pds/pdslist");
		return mav;
	}
	
	@RequestMapping("/PDS/WriteForm")
	public ModelAndView pdsWriteForm(@RequestParam HashMap<String, Object> map
			,HttpServletRequest request)
	// request는 업로드 파일에 대한 request
	// MultipartHttpServletRequest 가 HttpServletRequest를 상속받고
	// 있기 때문에 HttpServletRequest를 request 타입으로 써도 됨
	{	
		List<MenuVo> menuList = menuService.getMenuList();
		HttpSession session = request.getSession();
		String login_id = (String) session.getAttribute("userid");
		System.out.println(login_id);
		
		map.put("user_id", login_id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("menuList", menuList);
		mav.addObject("map", map);
		mav.setViewName("pds/write");
		
		return mav;
	}
	
	@RequestMapping("/PDS/Cont")
	public ModelAndView getPdsCont(@RequestParam HashMap<String, Object> map)
	{
		List<MenuVo> menuList = menuService.getMenuList();
		PdsVo pdsCont = pdsService.getPdsCont(map);
		List<FilesVo> fileList = pdsService.getFileList(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("menuList", menuList); //메뉴처리
		mav.addObject("pdsCont", pdsCont);   //Board 게시물
		mav.addObject("fileList", fileList);
		
		mav.addObject("nowpage", map.get("nowpage"));
		mav.addObject("pagegrpnum", map.get("pagegrpnum"));		
		
		mav.setViewName("pds/cont");
		return mav;
	}
	
	//HttpServletRequest request : 넘어온 파일정보 처리
	@RequestMapping("/PDS/Write")
	public ModelAndView pdsWrite(@RequestParam HashMap<String, Object> map
			,HttpServletRequest request)
	{	
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu_id", map.get("menu_id"));
		pdsService.setWrite(map, request);
		
		
		//페이징 처리할 정보추가 필요
		mav.addObject("nowpage", map.get("nowpage"));
		mav.addObject("pagegrpnum", map.get("pagegrpnum"));
		
		mav.setViewName("redirect:/PDS/List");
		return mav;
	}
	
	// @RequestMapping 안에 value= 는 생략 가능
	@RequestMapping(value="/download/{type}/{sfile:.+}", method = RequestMethod.GET)
	//{sfile:.+} :정규식에서 확장자에 .이 한개이상있을때 이렇게 써줘야함 
	//{sfile}만 적으면 request 받을때 확장자가 짤림
	public void downloadFile(HttpServletResponse response
							 , @PathVariable("type")String type
							 , @PathVariable("sfile")String sfile) throws IOException
	{
		String INTERNAL_FILE = sfile;
		String EXTERNAL_FILE_PATH = "i:\\upload\\" + sfile;
		
		File file = null;
		if(type.equalsIgnoreCase("internal"))
		{
			ClassLoader classLoader
				= Thread.currentThread().getContextClassLoader();
			file = new File(classLoader.getResource(INTERNAL_FILE).getFile());
		}
		else
		{
			file = new File(EXTERNAL_FILE_PATH);
		}
		
		if(!file.exists())
		{
			String errorMessage = "Sorry, The file is looking for does not exists";
			System.out.println(errorMessage);
			OutputStream outputStream = response.getOutputStream();
			outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
			outputStream.close();
			return;
		}
		
		String mimeType = URLConnection.guessContentTypeFromName(file.getName());
/*		if(mimeType == null)
		{
			System.out.println("mime type is not detectable, will take default");
			mimeType = "application/octet-stream";
		}*/
		mimeType = "application/octet-stream"; //무조건 다운로드
			
		System.out.println("mimeType:" + mimeType);
		
		response.setContentType(mimeType);
		response.setHeader("Content-Disposition"
						  , String.format("inline; filename=\"" + file.getName() + "\""));
		
		response.setContentLength((int)file.length());
		
		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
		
		// Copy bytes from source to destination(outputStream)
		// close both streams
		FileCopyUtils.copy(inputStream, response.getOutputStream());
	}
	
	@RequestMapping("/PDS/Delete")
	public ModelAndView setDelete(@RequestParam HashMap<String, Object> map)
	{	
		pdsService.setDelete(map);
		
		String menu_id = (String) map.get("menu_id");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu_id", menu_id);
		
		
		//페이징 처리할 정보추가 필요
		mav.addObject("nowpage", map.get("nowpage"));
		mav.addObject("pagegrpnum", map.get("pagegrpnum"));
		
		mav.setViewName("redirect:/PDS/List?menu_id="+ menu_id);
		return mav;
	}
	
	@RequestMapping("/PDS/UpdateForm")
	public ModelAndView pdsUpdateForm(@RequestParam HashMap<String, Object> map)
	{
		List<MenuVo> menuList = menuService.getMenuList();
		PdsVo pdsCont = pdsService.getPdsCont(map);
		List<FilesVo> fileList = pdsService.getFileList(map);	
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("nowpage", map.get("nowpage"));
		mav.addObject("pagegrpnum", map.get("pagegrpnum"));
		
		mav.addObject("menu_id", map.get("menu_id"));
		mav.addObject("menuList", menuList);
		mav.addObject("fileList", fileList);
		mav.addObject("pdsCont", pdsCont);
		mav.setViewName("pds/update");
		
		return mav;
	}
	
	@RequestMapping("/PDS/Update")
	public ModelAndView pdsUpdate(@RequestParam HashMap<String, Object> map)
	{
		pdsService.setPdsUpdate(map);
		
		String menu_id = (String) map.get("menu_id");
		
		ModelAndView mav = new ModelAndView();
		
		//페이징 처리할 정보추가 필요
		mav.addObject("nowpage", map.get("nowpage"));
		mav.addObject("pagegrpnum", map.get("pagegrpnum"));
		
		mav.setViewName("redirect:/PDS/List?menu_id="+ menu_id);
		
		return mav;
	}
}
