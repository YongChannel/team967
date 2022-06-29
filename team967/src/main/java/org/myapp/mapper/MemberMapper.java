package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.MemberVO;

public interface MemberMapper {
	
	//회원가입
	public List<MemberVO> getMember();
	
}
