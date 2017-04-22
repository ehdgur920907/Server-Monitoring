package com.monitoring.mapper;

import java.util.ArrayList;

import com.monitoring.dto.DiskDto;
import com.monitoring.dto.MemoryDto;

public interface Mapper {
	public ArrayList<DiskDto> selectDisk();
	public ArrayList<MemoryDto> selectMemory();
}
