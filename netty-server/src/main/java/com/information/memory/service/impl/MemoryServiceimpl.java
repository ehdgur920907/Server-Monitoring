package com.information.memory.service.impl;

import java.util.List;

import com.information.get.Memory;
import com.information.memory.service.MemoryService;
import com.information.repository.MemoryMapper;



public class MemoryServiceimpl implements MemoryService{
	

	private MemoryMapper memoryMapper;
	
	@Override
	public List<Memory> selectAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public void insertMemory(Memory memory) throws Exception {
//		memoryMapper.insertMemory(memory);
//		
//	}

	@Override
	public void deleteMemory(Memory memory) {
		// TODO Auto-generated method stub
		
	}


}
