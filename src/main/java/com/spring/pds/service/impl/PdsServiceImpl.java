package com.spring.pds.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.files.vo.FilesVo;
import com.spring.pds.dao.PdsDao;
import com.spring.pds.service.PdsService;
import com.spring.pds.vo.PdsVo;

@Service("pdsService")
public class PdsServiceImpl implements PdsService
{
	@Autowired
	private PdsDao pdsDao;
	
	@Override
	public List<PdsVo> getPdsList(HashMap<String, Object> map) 
	{
		//map:{menu_id:'MENU01'}
		//map:{nowpage:1}
		//map:{pagecount:2}
		//map:{pagegrpnum:1}
		
		
		//페이징 처리를 위한 내용 추가
		int pagetotalcount = 10; //[이전] 1 2 3 4 5 6 7 8 9 10 [다음]
		// 화면에 보여줄 페이지 번호의 갯수 paging.jspf 의 for문에 사용
		
		//int pagecount = Integer.parseInt((String)map.get("pagecount")); // 한페이지에 보여줄 게시물 수
		int pagecount = 5;
		
		map.put("pagecount", pagecount); //db에 전달하려고 보관
		
		// 실제 db 조회 menu_id, nowpage, pagecount
		List<PdsVo> pdsList = pdsDao.getPdsList(map);
		
		//페이징을 위한 정보처리	
		//int nowpage    = (int) map.get("nowpage");
		//Object type은 바로 int로 잘 바꿔지지 않음
		// nowpage: 현재 페이지 번호
		int nowpage    = Integer.parseInt((String) map.get("nowpage"));
		
		// totalcount 전체 자료수: getPdsList 의 Stored Procedure의 out 인자 정보
		int totalcount = Integer.parseInt(String.valueOf(map.get("totalcount")));
		
		// pagegrpnum: home.jsp 에서 넘어온 정보
		int pagegrpnum = Integer.parseInt((String) map.get("pagegrpnum"));
		
		// 복잡해서 paging만 BoardPaging class 만들어서 따로 분리
		BoardPaging bp = new BoardPaging(nowpage, pagecount, totalcount, pagetotalcount, pagegrpnum);
		
		// paging.jspf 에 넘겨줄 정보;
		PdsVo vo = bp.getPdsPagingInfo();
		
		// 조회할 메뉴 아이디를 전달
		vo.setMenu_id((String)map.get("menu_id"));
		
		map.put("pagePdsVo", vo);
		
		return pdsList;
	}

	@Override
	public void setWrite(HashMap<String, Object> map, HttpServletRequest request) 
	{	
		//파일 업로드 비지니스 로직 시작
		//1. 입력받은 문자들(title, writer, cont, menu_id, bnum
		//, lvl, step, nref)을 
		//Board에 저장 : daoImpl
		
		//2. file들을 disk(I:\\upload\\ 에 저장)
		//MultipartHttpServletRequest 객체가 담당 : serviceImpl
		
		//3. 업로드된 파일에 대한 정보를 files table에 저장 : daoImpl
		
		
		//업로드된 파일명과 같은 파일이 있는지 확인
		CheckFileName	checkFile = new CheckFileName();
		
		//파일저장위치: I:\\upload\\
		String filePath = "I:\\upload\\";
		
		//업로드된 파일의 처리(폴더에 저장)
		MultipartHttpServletRequest multipartServletRequest =
				(MultipartHttpServletRequest) request;
		
		Iterator<String> iterator = multipartServletRequest.getFileNames();
		//getFileNames()를 반복하려면 return type이 Iterator
		MultipartFile multipartFile = null;
		
		List<String> filenames  = new ArrayList<>();
		List<String> fileexts   = new ArrayList<>();
		List<String> sfilenames = new ArrayList<>();
		
		String fileName    = null;
		String orgFileName = null;
		String fileExt 	   = null;
		String sFileName   = null;
		
		int i=0;
		while(iterator.hasNext())
		{
			multipartFile = multipartServletRequest.getFile(iterator.next());
			
			HashMap<String, String> hashMap = new HashMap<>();
			
			if(!multipartFile.isEmpty())
			{
				fileName = multipartFile.getOriginalFilename();
				//user 가 upload한 파일명
				// 예) fileName = "태풍.솔릭.jpg"
				int dotIdx = fileName.lastIndexOf('.');
				orgFileName = fileName.substring(0, dotIdx); // 예)"태풍.솔릭"
				fileExt = fileName.substring(dotIdx); //".jpg"
				
				//중복파일이 존재하면 번호추가 후 실제 파일명(sfilename) 처리
				sFileName = checkFile.getCheckFileName(filePath, orgFileName, fileExt);
				filenames.add(fileName);
				fileexts.add(fileExt);
				sfilenames.add(sFileName);
				
				map.put("filenames", filenames);
				map.put("fileexts", fileexts);
				map.put("sfilenames", sfilenames);
				
				//저장
				File file = new File(filePath + sFileName);
				i += 1;
				try
				{
					multipartFile.transferTo(file); //실제파일명으로 저장됨
				}
				catch(IOException e)
				{
					System.out.println("오류:"+ e.getMessage());
					e.printStackTrace();
				}
			}
		}
		
		//Dao는 저장된 파일명을 DB에 Insert하는 역할만 한다
		//DB에 정보저장 (Table : Board, Files)
		pdsDao.setWrite(map);
	}

	@Override
	public PdsVo getPdsCont(HashMap<String, Object> map) 
	{
		PdsVo pdsCont = pdsDao.getPdsCont(map);
				
				return pdsCont;
	}

	@Override
	public List<FilesVo> getFileList(HashMap<String, Object> map) 
	{
		List<FilesVo> fileList = pdsDao.getFileList(map);
		return fileList;
	}

	@Override
	public void setDelete(HashMap<String, Object> map) 
	{
		// relation 이 걸려 있을 경우 처리 
		// 1. Files table 의 idx 글 삭제
		// 2. Board table 의 idx 글 삭제
		pdsDao.setDeletePds(map);//프로시저 한번에 처리 
		
		// 3. i:\\upload\\ 폴더의 파일 삭제
		List<FilesVo> fileList = pdsDao.getFileList(map);
		for(FilesVo filesVo : fileList)
		{
			File file = new File("i:\\upload\\" + filesVo.getFilename());
			if(file.exists())
			{
				file.delete();
			}
		}
	}

	@Override
	public void setPdsUpdate(HashMap<String, Object> map) 
	{
		pdsDao.setPdsUpdate(map);
	}

}
