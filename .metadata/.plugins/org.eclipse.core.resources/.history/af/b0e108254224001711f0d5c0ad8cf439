/*
 * 2016.04.02 테스트 완료
 * by wjheo
 */
package org.zerock.controller;

import static org.junit.Assert.fail;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

public class DataSourceConnectionTest extends AbstractTest{
	
	@Inject
	private DataSource ds;
	
	@Test
	public void test() throws SQLException {
		logger.info(""+ds.getConnection());
	}// test()

}// class
