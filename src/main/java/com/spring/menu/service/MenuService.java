package com.spring.menu.service;

import java.util.HashMap;
import java.util.List;

import com.spring.menu.vo.MenuVo;

public interface MenuService 
{

	public void addMenu(String menu_name);

	public List<MenuVo> getMenuList();

	public void menuUpdate(MenuVo vo);

	public void menuDelete(HashMap<String, Object> map);

}
