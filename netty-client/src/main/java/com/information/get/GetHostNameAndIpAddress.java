package com.information.get;

import java.net.InetAddress;
import java.net.UnknownHostException;

import com.information.model.HostNameAndIpAddress;

public class GetHostNameAndIpAddress implements Get {
	@Override
	public HostNameAndIpAddress execute() {
		HostNameAndIpAddress hostNameAndIpAddress = new HostNameAndIpAddress();
		try {
			InetAddress inetAddress = InetAddress.getLocalHost();
			String hostName = inetAddress.getHostName();
			int index = hostName.indexOf(".");
			
			hostName = hostName.substring(0, index);
			
			hostNameAndIpAddress.setHostName(hostName);
			hostNameAndIpAddress.setIpAddress(inetAddress.getHostAddress());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hostNameAndIpAddress;
	}
}
