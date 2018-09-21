package com.spring.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.service.BoardService;
import com.spring.board.vo.BoardVo;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;

@Controller
public class BoardController
{
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/")
	public String first() 
	{
		return "/Login";
	}
	
	@RequestMapping("/Home")
	public String home() 
	{
		return "home";
	}
	
	@RequestMapping("/Board/List")
	/*public String list(@RequestParam("menu_id") String menu_id)*/
	/*public String list(@RequestParam String menu_id)*/
	/*public String list(String menu_id)*/
	public ModelAndView list(String menu_id)
	{
		ModelAndView mav = new ModelAndView();
		List<BoardVo> list = boardService.getList(menu_id);
		mav.addObject("boardList", list);
		mav.addObject("menu_id", menu_id);
		
		List<MenuVo> menuList = menuService.getMenuList();
		mav.addObject("menuList", menuList);
		mav.setViewName("list");
		return mav;
	}
	
/*	@RequestMapping("/Board/WriteForm")
	public String writeForm(//@RequestParam BoardVo vo
							BoardVo vo, Model model)
	{
		model.addAttribute("vo", vo);
		return "write";
	}*/
	@RequestMapping("/Board/WriteForm")
	public String writeForm(@ModelAttribute("vo") BoardVo vo
							, Model model)
	{
		return "write";
	}
	
	@RequestMapping("/Board/Write")
	public String write(/*String menu_id, String writer,
						String title, String cont,
						int bnum, int lvl,
						int step, int nref*/
						//@RequestParam BoardVo vo
						@ModelAttribute("vo") BoardVo vo, Model model)
	{
		boardService.addBoard(vo);
		return "redirect:/Board/List?menu_id="+vo.getMenu_id();
	}
	
	@RequestMapping("/Board/Content")
	public String content(int idx, Model model)
	{
		BoardVo vo = boardService.getContent(idx);
		model.addAttribute("boardVo", vo);
		return "content";
	}
	
	@RequestMapping("/Board/Delete")
	public String delete(int idx, String menu_id)
	{
		boardService.deleteBoard(idx);
		return "redirect:/Board/List?menu_id=" + menu_id;
	}
	
	@RequestMapping("/Board/UpdateForm")
	public String updateForm(BoardVo vo, Model model)
	{
		BoardVo list = boardService.getContent(vo.getIdx());
		model.addAttribute("list", list);
		return "update";
	}
	
	@RequestMapping("/Board/Update")
	public String update(BoardVo vo)
	{
		boardService.updateBoard(vo);
		return "redirect:/Board/List?menu_id=" + vo.getMenu_id();
	}
	
}