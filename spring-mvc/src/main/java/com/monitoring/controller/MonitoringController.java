package com.monitoring.controller;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monitoring.dto.DiskDto;
import com.monitoring.dto.HostNameAndIpAddressDto;
import com.monitoring.dto.MemoryDto;
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
		MemoryDto memoryDto = mapper.selectMemory().get(0);
		DiskDto diskDto = mapper.selectDisk().get(0);
		HostNameAndIpAddressDto hostNameAndIpAddressDto = mapper.selectHostNameAndIpAddress().get(0);

		model.addAttribute("memory", memoryDto);
		model.addAttribute("disk", diskDto);
		model.addAttribute("hostNameAndIpAddress", hostNameAndIpAddressDto);
		return "monitoring";
	}
}
