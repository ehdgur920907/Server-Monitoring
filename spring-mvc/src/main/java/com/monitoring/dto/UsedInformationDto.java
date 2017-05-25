package com.monitoring.dto;

public class UsedInformationDto {
	public String usedMemory;
	public String usedCpu;
	public String usedDisk;
	public String userCpu;
	public String systemCpu;
	
	public String getUsedMemory() {
		return usedMemory;
	}
	public void setUsedMemory(String usedMemory) {
		this.usedMemory = usedMemory;
	}
	public String getUsedCpu() {
		return usedCpu;
	}
	public void setUsedCpu(String usedCpu) {
		this.usedCpu = usedCpu;
	}
	public String getUsedDisk() {
		return usedDisk;
	}
	public void setUsedDisk(String usedDisk) {
		this.usedDisk = usedDisk;
	}
	public String getUserCpu() {
		return userCpu;
	}
	public void setUserCpu(String userCpu) {
		this.userCpu = userCpu;
	}
	public String getSystemCpu() {
		return systemCpu;
	}
	public void setSystemCpu(String systemCpu) {
		this.systemCpu = systemCpu;
	}
}
