package com.spring.menu.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.menu.dao.MenuDao;
import com.spring.menu.vo.MenuVo;

@Repository("menuDao")
public class MenuDaoImpl implements MenuDao
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void addMenu(String menu_name) 
	{
		sqlSession.insert("Menu.MenuInsert", menu_name);
	}

	@Override
	public List<MenuVo> getMenuList() 
	{
		HashMap<String, Object> map = new HashMap<>();
		// mapper select 가 일반 SQL Query문일때 
		//List<MenuVo> menuList = sqlSession.selectList("Menu.MenuList", map);
		
		// mapper stored procedure 일때는 아래형태로 값을 받아야 함
		sqlSession.selectList("Menu.MenuList", map);
		List<MenuVo> menuList = (List<MenuVo>) map.get("result");
		
		return menuList;
	}

	@Override
	public void menuUpdate(MenuVo vo)
	{
		HashMap<String, Object> map = new HashMap<>();
		map.put("menu_id", vo.getMenu_id());
		map.put("menu_name", vo.getMenu_name());
		map.put("menu_seq", vo.getMenu_seq());
		sqlSession.update("Menu.MenuUpdate", map);
	}

	@Override
	public void menuDelete(HashMap<String, Object> map) 
	{
		sqlSession.delete("Menu.MenuDelete", map.get("menu_id"));
	}

}
