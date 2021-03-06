package model;

public class BasicInformation {
	private String totalDisk;
	private String usedDisk;
	private String freeDisk;

	private String totalMemory;
	private String usedMemory;
	private String freeMemory;

	private String totalCpu;
	private String userCpu;
	private String systemCpu;
	private String idleCpu;
	
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
}
