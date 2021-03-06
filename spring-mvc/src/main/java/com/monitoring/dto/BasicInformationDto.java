package com.monitoring.dto;

public class BasicInformationDto {
	private String totalMemory;
	private String usedMemory;
	private String freeMemory;

	private String totalDisk;
	private String usedDisk;
	private String freeDisk;

	private String totalCpu;
	private String userCpu;
	private String systemCpu;
	private String idleCpu;

	private String registerDate;

	public String getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	public String getTotalCpu() {
		return totalCpu;
	}

	public void setTotalCpu(String totalCpu) {
		this.totalCpu = totalCpu;
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

	public String getIdleCpu() {
		return idleCpu;
	}

	public void setIdleCpu(String idleCpu) {
		this.idleCpu = idleCpu;
	}

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

	@Override
	public String toString() {
		return "BasicInformationDto [totalMemory=" + totalMemory + ", usedMemory=" + usedMemory + ", freeMemory="
				+ freeMemory + ", totalDisk=" + totalDisk + ", usedDisk=" + usedDisk + ", freeDisk=" + freeDisk + "]";
	}

}
