package com.server.domain;

import java.sql.Date;

public class Memory {
	private Date regdate;
	private String usedMemory;
	private String totalMemory;
	private String freeMemory;

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getUsedMemory() {
		return usedMemory;
	}

	public void setUsedMemory(String usedMemory) {
		this.usedMemory = usedMemory;
	}

	public String getTotalMemory() {
		return totalMemory;
	}

	public void setTotalMemory(String totalMemory) {
		this.totalMemory = totalMemory;
	}

	public String getFreeMemory() {
		return freeMemory;
	}

	public void setFreeMemory(String freeMemory) {
		this.freeMemory = freeMemory;
	}

	@Override
	public String toString() {
		return "Memory [regdate=" + regdate + ", usedMemory=" + usedMemory + ", totalMemory=" + totalMemory
				+ ", freeMemory=" + freeMemory + "]";
	}

}// class
