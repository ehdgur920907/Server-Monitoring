package com.scheduling.quartz;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;

import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;

import com.client.netty.EchoClient;

public class QuartzScheduler {
	public static void main(String[] args) {
		try {
			Scheduler scheduler = new StdSchedulerFactory().getScheduler();
			scheduler.start();
			
			JobDetail job = newJob(EchoClient.class)
				      .withIdentity("job","group")
				      .build();
			
			Trigger trigger = newTrigger()
			          .withIdentity("trigger","group")
			          .startNow()
			          .withSchedule(simpleSchedule()
			              .withIntervalInSeconds(5)
			              .repeatForever())
			          .build();
			
			 scheduler.scheduleJob(job, trigger);
		      
		     Thread.sleep(60000);
	
		     scheduler.shutdown();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
