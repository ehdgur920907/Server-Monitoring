package com.information.get;

import org.hyperic.sigar.Mem;
import org.hyperic.sigar.Sigar;

import com.information.model.Memory;

public class GetMemory implements Get {
	@Override
	public Memory execute() {
		Sigar sigar = new Sigar();
		Memory memory = new Memory();

		Mem mem = null;

		try {
			mem = sigar.getMem();

			/* KB -> GB */
			memory.setTotalMemory(String.valueOf(String.format("%.2f", Math.round(((double) mem.getTotal() / 1000000000) * 100) / 100.0)));
			memory.setUsedMemory(String.valueOf(String.format("%.2f", Math.round(((double) mem.getUsed() / 1000000000) * 100) / 100.0)));
			memory.setFreeMemory(String.valueOf(String.format("%.2f", Math.round(((double) mem.getFree() / 1000000000) * 100) / 100.0)));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memory;
	}
}
