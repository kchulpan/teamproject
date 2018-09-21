package com.spring.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.dao.BoardDao;
import com.spring.board.service.BoardService;
import com.spring.board.vo.BoardVo;

@Service("boardService")
public class BoardServiceImpl implements BoardService
{
	@Autowired
	private BoardDao boardDao;

	@Override
	public void addBoard(BoardVo vo) 
	{
		boardDao.addBoard(vo);
	}

	@Override
	public List<BoardVo> getList(String menu_id) 
	{
		List<BoardVo> list = boardDao.getList(menu_id);
		return list;
	}

	@Override
	public BoardVo getContent(int idx) 
	{
		BoardVo vo = boardDao.getContent(idx);
		return vo;
	}

	@Override
	public void deleteBoard(int idx)
	{
		boardDao.getDelete(idx);
	}

	@Override
	public void updateBoard(BoardVo vo) 
	{
		boardDao.updateBoard(vo);
	}

}