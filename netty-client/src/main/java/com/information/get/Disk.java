package com.information.get;

public class Disk {
	private String usedDisk;
	private String totalDisk;
	private String freeDisk;
	public String getUsedDisk() {
		return usedDisk;
	}
	public void setUsedDisk(String usedDisk) {
		this.usedDisk = usedDisk;
	}
	public String getTotalDisk() {
		return totalDisk;
	}
	public void setTotalDisk(String totalDisk) {
		this.totalDisk = totalDisk;
	}
	public String getFreeDisk() {
		return freeDisk;
	}
	public void setFreeDisk(String freeDisk) {
		this.freeDisk = freeDisk;
	}
	@Override
	public String toString() {
		return "Disk [usedDisk=" + usedDisk + ", totalDisk=" + totalDisk + ", freeDisk=" + freeDisk + "]";
	}
	
}
