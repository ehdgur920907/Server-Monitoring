package com.monitoring.mapper;

import java.util.ArrayList;

import com.monitoring.dto.BasicInformationDto;
import com.monitoring.dto.ServerInformationDto;

public interface Mapper {
	public ArrayList<BasicInformationDto> selectBasicInformation();
	public ArrayList<ServerInformationDto> selectServerInformation();
}
