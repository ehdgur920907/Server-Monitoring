package com.server.netty;

import java.nio.charset.Charset;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

public class EchoServerHandler extends ChannelInboundHandlerAdapter {
	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg) throws ParseException {
		String readMessage = ((ByteBuf) msg).toString(Charset.defaultCharset());
		
		JSONParser parser = new JSONParser();
	    JSONObject jsonObject = (JSONObject)parser.parse(readMessage);
	    JSONObject memoryJsonObject = (JSONObject)jsonObject.get("memory");
	    JSONObject diskJsonObject = (JSONObject)jsonObject.get("disk");
	    
	    
	    
	    System.out.println("====Memory====");
	    System.out.println("total memory: " + memoryJsonObject.get("totalMemory"));
	    System.out.println("used memory: " + memoryJsonObject.get("usedMemory"));
	    System.out.println("free memory: " + memoryJsonObject.get("freeMemory"));
	    System.out.println("");
	    System.out.println("====Disk====");
	    System.out.println("total disk: " + diskJsonObject.get("totalDisk"));
	    System.out.println("used disk: " + diskJsonObject.get("usedDisk"));
	    System.out.println("free disk: " + diskJsonObject.get("freeDisk"));
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		cause.printStackTrace();
		ctx.close();
	}
}