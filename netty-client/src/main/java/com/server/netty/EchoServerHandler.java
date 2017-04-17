package com.server.netty;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.sql.DriverManager;
import java.sql.SQLException;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import com.information.get.Memory;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

public class EchoServerHandler extends ChannelInboundHandlerAdapter {
	
//	public void selectInformation() throws Exception{
//		String resource = "com/mybatis/config/mybatis-config.xml";
//		InputStream inputStream = Resources.getResourceAsStream(resource);
//		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//		try(SqlSession session = sqlSessionFactory.openSession()){
//			Memory memory  = session.selectOne("com.information.mapper.MemoryMapper.select_Memorys", "8.46GB");
//		} 
//	}
//	
//	public void insertInformation() throws Exception{
//		String resource = "com/mybatis/config/mybatis-config.xml";
//		InputStream inputStream = Resources.getResourceAsStream(resource);
//		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//		try(SqlSession session = sqlSessionFactory.openSession()){
//			session.insert("com.information.mapper.MemoryMapper.select_Memorys", new Memory());
//			
//		}
//	}
	 
	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg) throws ParseException, Exception{
//		String driver = "com.mysql.jdbc.Driver";
//		String url = "jdbc:mysql://localhost:3306/server?useSSL=false";
//		String username = "root";
//		String password = "delab";
//		
		String readMessage = ((ByteBuf) msg).toString(Charset.defaultCharset());
//		java.sql.Connection conn = null;
//		PreparedStatement pstmt = null;
// 		
		JSONParser parser = new JSONParser();
	    JSONObject json = (JSONObject)parser.parse(readMessage);
//	    
//	    try{
//	    	Class.forName(driver);
//	    	conn = DriverManager.getConnection(url, username, password);
//	    	String sql  = "Insert into memory values (?, ?, ?)";
//	    	pstmt = (PreparedStatement)conn.prepareStatement(sql);
//	    	pstmt.setString(1, (String)json.get("totalMemory"));
//	    	pstmt.setString(2, (String)json.get("usedMemory"));
//	    	pstmt.setString(3, (String)json.get("freeMemory"));
//	    	pstmt.executeUpdate();
//	    	System.out.println("success");
//	    }catch(Exception e){
//	    	e.printStackTrace();
//	    }finally {
//				if (pstmt != null) {
//				try {
//					pstmt.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			} else if (conn != null) {
//				try {
//					conn.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		}

		Memory memory = new Memory();
		String resource = "com/mybatis/config/mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		try(SqlSession session = sqlSessionFactory.openSession()){
			memory.setFreeMemory(json.get("totalMemory").toString());
		    memory.setTotalMemory(json.get("usedMemory").toString());
		    memory.setUsedMemory(json.get("freeMemory").toString());
			session.insert("com.information.mapper.MemoryMapper.insertMemory", memory);
		}
	    
	    
	    System.out.println(json.get("totalMemory"));
	    System.out.println(json.get("usedMemory"));
	    System.out.println(json.get("freeMemory"));
		ByteBuf messageBuffer = Unpooled.buffer();
		messageBuffer.writeBytes(json.toJSONString().getBytes());
		ctx.writeAndFlush(messageBuffer);
	    
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		cause.printStackTrace();
		ctx.close();
	}
}