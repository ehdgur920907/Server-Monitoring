//package com.information.memory.controller;
//
//import java.io.InputStream;
//
//import org.apache.ibatis.io.Resources;
//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.apache.ibatis.session.SqlSessionFactoryBuilder;
//import org.json.simple.JSONObject;
//
//import com.information.get.Memory;
//import com.information.memory.service.impl.MemoryServiceimpl;
//
//
//public class MemoryController {
//	private MemoryServiceimpl memoryServiceimpl;
//	
//	private SqlSessionFactory sqlSessionFactory = null;
//	
//	public void insert() throws Exception{
//		Memory memory = new Memory();
//		JSONObject json = new JSONObject();
//		InputStream is = Resources.getResourceAsStream("com/mybatis/config/mybatis-config.xml");
//		sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
//		SqlSession session = sqlSessionFactory.openSession();
//		try {
//			memory.setFreeMemory("3.3GB");
//			memory.setTotalMemory("4.4GB");
//			memory.setUsedMemory("5.5GB");
//					memoryServiceimpl.insertMemory(memory);
//		} finally {
//		  session.close();
//		}
//	}
//	
//	
//}
