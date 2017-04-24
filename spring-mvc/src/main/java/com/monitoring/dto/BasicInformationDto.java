package com.monitoring.dto;

public class BasicInformationDto {
	private String totalMemory;
	private String usedMemory;
	private String freeMemory;

	private String totalDisk;
	private String usedDisk;
	private String freeDisk;

	public String getTotalMemory() {
		return totalMemory;
	}

	public void setTotalMemory(String totalMemory) {
		this.totalMemory = totalMemory;
	}

	public String getUsedMemory() {
		return usedMemory;
	}

	public void setUsedMemory(String usedMemory) {
		this.usedMemory = usedMemory;
	}

	public String getFreeMemory() {
		return freeMemory;
	}

	public void setFreeMemory(String freeMemory) {
		this.freeMemory = freeMemory;
	}

	public String getTotalDisk() {
		return totalDisk;
	}

	public void setTotalDisk(String totalDisk) {
		this.totalDisk = totalDisk;
	}

	public String getUsedDisk() {
		return usedDisk;
	}

	public void setUsedDisk(String usedDisk) {
		this.usedDisk = usedDisk;
	}

	public String getFreeDisk() {
		return freeDisk;
	}

	public void setFreeDisk(String freeDisk) {
		this.freeDisk = freeDisk;
	}
}
