package com.information.get;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Properties;

import com.information.model.ServerInformation;

public class GetServerInformation implements Get {
	@Override
	public ServerInformation execute() {
		ServerInformation serverInformation = new ServerInformation();
		Properties properties = System.getProperties(); 
		
		try {
			InetAddress inetAddress = InetAddress.getLocalHost();
			String hostName = inetAddress.getHostName();
			int index = hostName.indexOf(".");

			hostName = hostName.substring(0, index);
			
			serverInformation.setOsName(properties.getProperty("os.name"));
			serverInformation.setHostName(hostName);
			serverInformation.setIpAddress(inetAddress.getHostAddress());
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return serverInformation;
	}
}
