package com.information.memory.service;

import java.util.List;

import com.information.get.Memory;

public interface MemoryService {
		 public List<Memory> selectAllUsers(); 
		 public void insertMemory(Memory memory);
		 public void deleteMemory(Memory memory);
	}
