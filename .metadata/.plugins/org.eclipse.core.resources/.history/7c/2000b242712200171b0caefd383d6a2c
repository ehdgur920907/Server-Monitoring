package com.information.get;

import java.io.File;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class GetDisk {
	public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
		getDisk();
	}

	public Disk getDisk() {
		String drive;
		double totalDisk, freeDisk, usedDisk;
		Disk disk = new Disk();
		File[] roots = File.listRoots();

		for (File root : roots) {

			drive = root.getAbsolutePath();

			totalDisk = root.getTotalSpace() / Math.pow(1024, 3);
			usedDisk = root.getUsableSpace() / Math.pow(1024, 3);

			totalDisk = Math.round((totalDisk * 100)) / 100.0;
			usedDisk = Math.round((usedDisk * 100)) / 100.0;

			freeDisk = totalDisk - usedDisk;

			disk.setTotalDisk(String.valueOf(totalDisk + "GB"));
			disk.setUsedDisk(String.valueOf(usedDisk + "GB"));
			disk.setFreeDisk(String.valueOf(freeDisk + "GB"));
		}
		return disk;
	}
}
