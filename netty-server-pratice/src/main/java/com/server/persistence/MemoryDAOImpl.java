package com.server.persistence;


import org.springframework.stereotype.Repository;
import com.server.domain.Memory;

@Repository
public class MemoryDAOImpl extends GenericDAOImpl<Memory, String> implements MemoryDAO {
//	private MemoryDAO dao;
//	
//	public void register(){
//		Memory vo = new Memory();
//		vo.setTotalMemory("9.0GB");
//		vo.setUsedMemory("4.0GB");
//		vo.setFreeMemory("5.0GB");
//		dao.register(vo);
//	}
}
