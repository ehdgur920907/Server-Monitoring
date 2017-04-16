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
	    JSONObject json = (JSONObject)parser.parse(readMessage);
	    
	    System.out.println(json.get("totalMemory"));
	    System.out.println(json.get("usedMemory"));
	    System.out.println(json.get("freeMemory"));
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		cause.printStackTrace();
		ctx.close();
	}
}