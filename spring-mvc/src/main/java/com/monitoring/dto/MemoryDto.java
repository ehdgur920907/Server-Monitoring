package com.monitoring.dto;

public class MemoryDto {
	private String totalMemory;
	private String usedMemory;
	private String freeMemory;

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

	@Override
	public String toString() {
		return "MemoryDto [totalMemory=" + totalMemory + ", usedMemory=" + usedMemory + ", freeMemory=" + freeMemory
				+ "]";
	}
}
