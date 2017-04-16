package com.information.get;

import org.hyperic.sigar.Mem;
import org.hyperic.sigar.Sigar;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class GetMemory implements Job {
	public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
		getMemory();
	}

	public Memory getMemory() {
		Sigar sigar = new Sigar();
		Memory memory = new Memory();

		Mem mem = null;

		try {
			mem = sigar.getMem();

			/* KB -> GB */
			memory.setFreeMemory(
					String.valueOf(Math.round(((double) mem.getFree() / 1000000000) * 100) / 100.0 + "GB"));
			memory.setUsedMemory(
					String.valueOf(Math.round(((double) mem.getUsed() / 1000000000) * 100) / 100.0 + "GB"));
			memory.setTotalMemory(
					String.valueOf(Math.round(((double) mem.getTotal() / 1000000000) * 100) / 100.0 + "GB"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memory;
	}
}
