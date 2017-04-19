package com.board.mvc.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.board.mv.dao.BoardDao;
import com.board.mvc.dto.BoardDto;

public class BoardListCommand implements BoardCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		BoardDao boardDao = new BoardDao();
		ArrayList<BoardDto> dtoList = boardDao.list();
		
		model.addAttribute("list", dtoList);
	}

}
