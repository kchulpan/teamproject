package com.spring.menu.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.menu.dao.MenuDao;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;

@Service("menuService")
public class MenuServiceImpl implements MenuService{

	@Autowired
	private MenuDao menuDao;
	
	@Override
	public void addMenu(String menu_name) 
	{
		menuDao.addMenu(menu_name);
	}

	@Override
	public List<MenuVo> getMenuList() 
	{
		List<MenuVo> menulist = menuDao.getMenuList();	
		return menulist;
	}

	@Override
	public void menuUpdate(MenuVo vo) 
	{
		menuDao.menuUpdate(vo);
	}

	@Override
	public void menuDelete(HashMap<String, Object> map) 
	{
		menuDao.menuDelete(map);
	}

}
