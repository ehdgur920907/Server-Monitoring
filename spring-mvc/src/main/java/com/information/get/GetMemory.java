//package com.information.get;
//
//import java.util.ArrayList;
//
//import org.springframework.ui.Model;
//
//import com.monitoring.dao.MemoryDao;
//import com.monitoring.dto.MemoryDto;
//
//public class GetMemory implements Get {
//
//	@Override
//	public void execute(Model model) {
//		// TODO Auto-generated method stub
//		try {
//			MemoryDao memoryDao = new MemoryDao();
//			ArrayList<MemoryDto> memoryList = memoryDao.memoryList();
//			
//			model.addAttribute("memory", memoryList);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//
//}
