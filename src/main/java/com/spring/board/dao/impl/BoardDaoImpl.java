                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             package com.spring.board.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.dao.BoardDao;
import com.spring.board.vo.BoardVo;
                                                           
@Repository("boardDao")
public class BoardDaoImpl implements BoardDao
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void addBoard(BoardVo vo) 
	{
		sqlSession.insert("Board.BoardInsert", vo);
	}

	@Override
	public List<BoardVo> getList(String menu_id) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("menu_id", menu_id);
		sqlSession.selectList("Board.BoardList", map); 
		List<BoardVo> list = (List<BoardVo>) map.get("result");
		return list;
	}

	@Override
	public BoardVo getContent(int idx) 
	{
		HashMap<String, Object> map = new HashMap<>();
		map.put("idx", idx);
		sqlSession.selectList("Board.BoardContent", map); 
		List<BoardVo> list = (List<BoardVo>) map.get("result");
		return list.get(0);
	}

	@Override
	public void getDelete(int idx) 
	{
		HashMap<String, Object> map = new HashMap<>();
		map.put("idx", idx);
		sqlSession.delete("Board.BoardDelete", map);
	}

	@Override
	public void updateBoard(BoardVo vo) 
	{
		HashMap<String, Object> map = new HashMap<>();
		map.put("idx", vo.getIdx());
		map.put("title", vo.getTitle());
		map.put("cont", vo.getCont());
		sqlSession.update("Board.BoardUpdate", map);
	}
}