package com.monitoring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailController {
	@RequestMapping("/monitoring/memory/{id}")
	public String getMemory(Model model, @PathVariable String id) {
		return "/jsp/memory";
	}
	
	@RequestMapping("/monitoring/cpu/bar/{id}")
	public String getCpuBar(Model model, @PathVariable String id) {
		return "/jsp/cpu_bar";
	}
	
	@RequestMapping("/monitoring/cpu/wave/{id}")
	public String getCpuWave(Model model, @PathVariable String id) {
		return "/jsp/cpu_wave";
	}
	
	@RequestMapping("/monitoring/disk/{id}")
	public String getDisk(Model model, @PathVariable String id) {
		return "/jsp/disk";
	}
}
