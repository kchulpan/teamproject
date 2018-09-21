package com.spring.menu.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;

@Controller
public class MenuController 
{
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/Menus/List")
	public ModelAndView menuList()
	{
		ModelAndView mav = new ModelAndView();
		
		List<MenuVo> menuList = menuService.getMenuList();
		mav.addObject("menuList", menuList);
		mav.setViewName("menus/menulist");
		
		return mav;
	}
	
	@RequestMapping("/Menus/WriteForm")
	public String menuWriteForm()
	{
		return "menus/menuwrite";
	}
	
	@RequestMapping("/Menus/Write")
	public ModelAndView menuWrite(String menu_name)
	{
		menuService.addMenu(menu_name);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/Menus/List");
		return mav;
	}
	
	@RequestMapping("/Menus/UpdateForm")
	public ModelAndView menuUpdateForm(MenuVo menuvo)
	{
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu_id", menuvo.getMenu_id());
		mav.addObject("menu_name", menuvo.getMenu_name());
		mav.addObject("menu_seq", menuvo.getMenu_seq());
		mav.setViewName("menus/menuupdate");
		return mav;
	}
	
	@RequestMapping("/Menus/Update")
	public ModelAndView menuUpdate(MenuVo vo)
	{
		menuService.menuUpdate(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/Menus/List");
		return mav;
	}
	
	@RequestMapping("/Menus/Delete")
	public ModelAndView menuDelete(@RequestParam HashMap<String, Object> map)
	{
/*		HashMap<String, Object> map = new HashMap<>();
		map.put("menu_id", menu_id);
		@RequestParam HashMap<String, Object> map 으로 대체가능*/
		menuService.menuDelete(map);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/Menus/List");
		return mav;
	}
}
