package com.server.netty;

import java.nio.charset.Charset;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		JSONObject jsonObject = (JSONObject) parser.parse(readMessage);
		JSONObject basicInformationJsonObject = (JSONObject) jsonObject.get("basicInformation");
		JSONObject serverInformationJsonObject = (JSONObject) jsonObject.get("serverInformation");

		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/server_monitoring?useSSL=false";
		String username = "root";
		String password = "mju12345";

		java.sql.Connection conn = null;
		ResultSet result = null;
		ResultSet result2 = null;

		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		PreparedStatement pstmt4 = null;


		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, username, password);

			String ipsql = "SELECT ip_address FROM server_information";
			pstmt1 = (PreparedStatement) conn.prepareStatement(ipsql);
			result = pstmt1.executeQuery();

			System.out.println((String) serverInformationJsonObject.get("ipAddress"));
			for (int i = 0; result.next(); i++) {
				String ipAddress = result.getString("ip_address");

				if (serverInformationJsonObject.get("ipAddress").equals(ipAddress)) {
					String updateipsql = "UPDATE server_information SET ip_address = ?, host_name = ?, os_name = ?, status = ?"
							+ "WHERE ip_address = ?";
					pstmt2 = (PreparedStatement) conn.prepareStatement(updateipsql);
					pstmt2.setString(1, (String) serverInformationJsonObject.get("ipAddress"));
					pstmt2.setString(2, (String) serverInformationJsonObject.get("hostName"));
					pstmt2.setString(3, (String) serverInformationJsonObject.get("osName"));
					pstmt2.setString(4, (String) serverInformationJsonObject.get("status"));
					pstmt2.setString(5, (String) serverInformationJsonObject.get("ipAddress"));
					pstmt2.executeUpdate();
					System.out.println(pstmt2);
				}
			}

			String idsql = "SELECT id FROM server_information WHERE ip_address = ?";
			pstmt3 = (PreparedStatement) conn.prepareStatement(idsql);
			pstmt3.setString(1, (String) serverInformationJsonObject.get("ipAddress"));
			result2 = pstmt3.executeQuery();
			if (result2.next()) {
				String id = result2.getString("id");

				String basicSql = "INSERT INTO basic_information (total_memory, used_memory, free_memory, "
						+ "total_disk, used_disk, free_disk,"
						+ "total_cpu, user_cpu , idle_cpu, system_cpu, ip_address, id ) "
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				pstmt4 = (PreparedStatement) conn.prepareStatement(basicSql);
				pstmt4.setString(1, (String) basicInformationJsonObject.get("totalMemory"));
				pstmt4.setString(2, (String) basicInformationJsonObject.get("usedMemory"));
				pstmt4.setString(3, (String) basicInformationJsonObject.get("freeMemory"));

				pstmt4.setString(4, (String) basicInformationJsonObject.get("totalDisk"));
				pstmt4.setString(5, (String) basicInformationJsonObject.get("usedDisk"));
				pstmt4.setString(6, (String) basicInformationJsonObject.get("freeDisk"));

				pstmt4.setString(7, (String) basicInformationJsonObject.get("totalCpu"));
				pstmt4.setString(8, (String) basicInformationJsonObject.get("userCpu"));
				pstmt4.setString(9, (String) basicInformationJsonObject.get("idleCpu"));
				pstmt4.setString(10, (String) basicInformationJsonObject.get("systemCpu"));
				pstmt4.setString(11, (String) serverInformationJsonObject.get("ipAddress"));
				pstmt4.setString(12, id);

				System.out.println(pstmt4);
				pstmt4.executeUpdate();

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt1 != null) {
				try {
					pstmt1.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt2 != null) {
				try {
					pstmt2.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt3 != null) {
				try {
					pstmt3.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt4 != null) {
				try {
					pstmt4.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		ctx.close();
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		cause.printStackTrace();
		ctx.close();
	}
}