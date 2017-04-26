package com.monitoring.dto;

public class ServerInformationDto {
	private String id;
	private String ipAddress;
	private String hostName;
	private String osName;
	
	public String getOsName() {
		return osName;
	}

	public void setOsName(String osName) {
		this.osName = osName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	@Override
	public String toString() {
		return "ServerInformationDto [id=" + id + ", ipAddress=" + ipAddress + ", hostName=" + hostName + ", osName="
				+ osName + "]";
	}
	
}
