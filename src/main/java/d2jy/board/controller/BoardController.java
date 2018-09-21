package d2jy.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import d2jy.board.service.BoardService;

@Controller
public class BoardController 
{
	@Autowired
	private BoardService boardService;
}
