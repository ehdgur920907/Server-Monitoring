package com.information.get;

import java.io.File;

import org.hyperic.sigar.Mem;
import org.hyperic.sigar.Sigar;

import com.information.model.BasicInformation;

public class GetBasicInformation implements Get {
	@Override
	public BasicInformation execute() {
		BasicInformation basicInformation = new BasicInformation();
		Sigar sigar = new Sigar();
		Mem mem = null;
		
		File[] roots = File.listRoots();

		for (File root : roots) {
			// drive = root.getAbsolutePath();
			basicInformation.setTotalDisk(String.valueOf(String.format("%.2f", root.getTotalSpace() / Math.pow(1024, 3))));
			basicInformation.setUsedDisk(String.valueOf(String.format("%.2f", root.getUsableSpace() / Math.pow(1024, 3))));
			basicInformation.setFreeDisk(String.valueOf(String.format("%.2f", (root.getTotalSpace() / Math.pow(1024, 3)) - (root.getUsableSpace() / Math.pow(1024, 3)))));
		}

		try {
			mem = sigar.getMem();

			/* KB -> GB */
			basicInformation.setTotalMemory(String.valueOf(String.format("%.2f", Math.round(((double) mem.getTotal() / 1000000000) * 100) / 100.0)));
			basicInformation.setUsedMemory(String.valueOf(String.format("%.2f", Math.round(((double) mem.getUsed() / 1000000000) * 100) / 100.0)));
			basicInformation.setFreeMemory(String.valueOf(String.format("%.2f", Math.round(((double) mem.getFree() / 1000000000) * 100) / 100.0)));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return basicInformation;
	}
}
