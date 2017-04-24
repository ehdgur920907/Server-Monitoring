package com.monitoring.controller;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monitoring.dto.BasicInformationDto;
import com.monitoring.dto.ServerInformationDto;
import com.monitoring.mapper.Mapper;

@Controller
public class MonitoringController {
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/monitoring")
	public String getMonitoring(Locale locale, Model model) {
		Mapper mapper = sqlSession.getMapper(Mapper.class);
//		DiskDto diskDto = new DiskDto();
//		
//		diskDto.setTotalDisk("8");
//		diskDto.setUsedDisk("6");
//		diskDto.setFreeDisk("2");
//		
//		mapper.insertDisk(diskDto);
		BasicInformationDto basicInformationDto = mapper.selectBasicInformation().get(0);
		ServerInformationDto serverInformationDto = mapper.selectServerInformation().get(0);

		model.addAttribute("basicInformation", basicInformationDto);
		model.addAttribute("serverInformation", serverInformationDto);
		return "monitoring";
	}
}