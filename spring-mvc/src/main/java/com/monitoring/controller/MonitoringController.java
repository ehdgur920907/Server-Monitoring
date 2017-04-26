package com.monitoring.controller;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monitoring.dto.BasicInformationDto;
import com.monitoring.dto.ServerInformationDto;
import com.monitoring.mapper.Mapper;

@Controller
public class MonitoringController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/monitoring/{id}")
	public String getMonitoring(Locale locale, Model model, @PathVariable String id) {
		Mapper mapper = sqlSession.getMapper(Mapper.class);
		BasicInformationDto basicInformationDto = mapper.selectBasicInformation(id).get(mapper.selectBasicInformation(id).size() - 4);
		ServerInformationDto serverInformationDto = mapper.selectServerInformation(id);
		
		basicInformationDto.setRegisterDate(basicInformationDto.getRegisterDate().substring(0, 19));
		
		model.addAttribute("basicInformation", basicInformationDto);
		model.addAttribute("serverInformation", serverInformationDto);
		return "monitoring";
	}
}
