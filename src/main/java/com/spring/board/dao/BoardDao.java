package com.spring.board.dao;

import java.util.List;

import com.spring.board.vo.BoardVo;

public interface BoardDao 
{
	public void addBoard(BoardVo vo);

	public List<BoardVo> getList(String menu_id);

	public BoardVo getContent(int idx);

	public void getDelete(int idx);

	public void updateBoard(BoardVo vo);
}
