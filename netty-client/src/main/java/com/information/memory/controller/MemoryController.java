package com.information.memory.controller;

import java.io.InputStream;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.information.get.Memory;


public class MemoryController {
	
	public void gettingStrarted() throws Exception{
		String resource = "com/mybatis/config/mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = sqlSessionFactory.openSession();
		try {
			Memory memory = session.selectOne("com.information.mapper.MemoryMapper.select_Memorys", "8.86GB");
		} finally {
		  session.close();
		}
	}
	
	
}
