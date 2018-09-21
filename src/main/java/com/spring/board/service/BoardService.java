package com.spring.board.service;

import java.util.List;

import com.spring.board.vo.BoardVo;


public interface BoardService 
{
	public void addBoard(BoardVo vo);

	public List<BoardVo> getList(String menu_id);

	public BoardVo getContent(int idx);

	public void deleteBoard(int idx);

	public void updateBoard(BoardVo vo);
}