package com.monitoring.mapper;

import java.util.ArrayList;

import com.monitoring.dto.AdminInformationDto;
import com.monitoring.dto.BasicInformationDto;
import com.monitoring.dto.ServerInformationDto;

public interface Mapper {
	public ArrayList<ServerInformationDto> selectServerInformationList();
	public ArrayList<BasicInformationDto> selectBasicInformation(String id);
	public ServerInformationDto selectServerInformation(String id);
	public AdminInformationDto selectAdminInformation(String id);
}
