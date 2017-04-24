package com.monitoring.mapper;

import java.util.ArrayList;

import com.monitoring.dto.DiskDto;
import com.monitoring.dto.HostNameAndIpAddressDto;
import com.monitoring.dto.MemoryDto;

public interface Mapper {
	public ArrayList<DiskDto> selectDisk();
//	public void insertDisk(DiskDto diskDto);

	public ArrayList<MemoryDto> selectMemory();
	
	public ArrayList<HostNameAndIpAddressDto> selectHostNameAndIpAddress();
}
