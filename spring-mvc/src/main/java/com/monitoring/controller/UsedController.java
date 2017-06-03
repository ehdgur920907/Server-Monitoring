//package com.monitoring.controller;
//
//import java.util.ArrayList;
//import java.util.HashMap;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.monitoring.dto.UsedInformationDto;
//import com.monitoring.mapper.Mapper;
//
//@Controller
//public class UsedController {
//	@Autowired
//	private SqlSession sqlSession;
//	
//	@RequestMapping("/monitoring/memory/{id}")
//	public String getUsedMemory(@PathVariable String id, Model model) {
//		Mapper mapper = sqlSession.getMapper(Mapper.class);
//		ArrayList<UsedInformationDto> arrayListUsedInformationDto = new ArrayList<UsedInformationDto>();
//		
//		int j = 2;
//		
//		for (int i = 0; i < 10; i++) {
//			arrayListUsedInformationDto.add(mapper.selectUsedInformation(id).get(mapper.selectUsedInformation(id).size() - j));
//			j = j + 10;
//		}
//		
//		model.addAttribute("arrayListUsedInformation", arrayListUsedInformationDto);
//		model.addAttribute("id", id);
//		return "/jsp/memory";
//	}
//	
//	@RequestMapping("/monitoring/memory")
//	@ResponseBody
//	public String monitoringMemory(Model model, @RequestParam("id") String id) {
//		Mapper mapper = sqlSession.getMapper(Mapper.class);
//		ArrayList<UsedInformationDto> arrayListUsedInformationDto = new ArrayList<UsedInformationDto>();
//		HashMap<String, String> hashMap = new HashMap<String, String>();
//		int j = 2;
//		
//		for (int i = 0; i < 10; i++) {
//			arrayListUsedInformationDto.add(mapper.selectUsedInformation(id).get(mapper.selectUsedInformation(id).size() - j));
//			j = j + 10;
//		}
//		
//		return null;
//	}
//}
