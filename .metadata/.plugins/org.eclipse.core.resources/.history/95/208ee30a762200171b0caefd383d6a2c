package com.board.mvc.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public class BoardContentsCommand implements BoardCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest httpServletrequest = (HttpServletRequest)map.get("request");
		String bId = httpServletrequest.getParameter("bId");
		
		
	}

}
