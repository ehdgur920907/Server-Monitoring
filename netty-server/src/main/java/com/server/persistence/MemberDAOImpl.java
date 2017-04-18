package com.server.persistence;


import org.springframework.stereotype.Repository;
import com.server.domain.MemberVO;

@Repository
public class MemberDAOImpl extends GenericDAOImpl<MemberVO, String> implements MemberDAO {

}
