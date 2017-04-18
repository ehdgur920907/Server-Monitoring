//package com.information.dao;
//
//import java.io.IOException;
//import java.io.InputStream;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Properties;
//
//import org.apache.ibatis.io.Resources;
//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.apache.ibatis.session.SqlSessionFactoryBuilder;
//
//public class SampleSessionFactory {
//	public void demo(){
//		String resource = "com/mybatis/config/mybatis-config.xml";
//		
//		Properties props = new Properties();
//		
//		props.put("driver", "com.mysql.jabc.Driver");
//		props.put("url", "jdbc:mysql://localhost/server");
//		props.put("username", "root");
//		props.put("password", "delab");
//		
//		SqlSession session = null;
//		try{
//			InputStream inputStream = Resources.getResourceAsStream(resource);
//			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream, props);
//
//			session = sqlSessionFactory.openSession(true);
//		}catch(IOException e ){
//			e.printStackTrace();
//			return;
//		}
//		HashMap<String, String> input  = new HashMap<String, String>();
//		input.put("used_memory", "8.46GB");
//		
//		List<HashMap<String, String>> outputs = 
//				session.selectList("com.information.mapper.sql.MemoryMapper.selectMemorys", input);
//		System.out.println(outputs.get(0));
//		session.commit();
//		session.close();
//	}
//}
