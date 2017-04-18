/*
 * 2016.04.02 占쎈�믭옙�뮞占쎈뱜 占쎌끏�뙴占�
 * by wjheo
 */
package com.server.controller;

import javax.inject.Inject;

import org.junit.Test;

import com.server.domain.MemberVO;
import com.server.persistence.MemberDAO;

public class MemberDAOImplTest extends AbstractTest{

	@Inject
	private MemberDAO dao;
	
	@Test
	public void test() {
		logger.info(""+dao);
	}
	
	@Test
	public void getTimeTest() {
		logger.info(""+dao.getTime());
	}
	
	@Test
	public void registerTest(){
		MemberVO vo = new MemberVO();
		vo.setUserid("asdasasdasdas");
		vo.setUserpw("hi");
		vo.setUsername("123");
		vo.setEmail("ejasd@asd");
	
		dao.register(vo);
	}
	
	@Test
	public void getTest(){
		logger.info(""+dao.get("wjheoid"));
	}
	
	@Test
	public void getListTest(){
		logger.info(""+dao.getList());
	}
	
}// class
