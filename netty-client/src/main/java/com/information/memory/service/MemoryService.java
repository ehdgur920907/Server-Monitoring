package com.information.memory.service;

import java.util.List;

import com.information.get.Memory;

public interface MemoryService {
		 public List<Memory> selectAllUsers() throws Exception; 
		 public void insertMemory(Memory memory) throws Exception;
		 public void deleteMemory(Memory memory) throws Exception;
	}

