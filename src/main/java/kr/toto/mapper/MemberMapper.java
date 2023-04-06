package kr.toto.mapper;

import kr.toto.entity.Member;

public interface MemberMapper {
	
	public int insert(Member vo); // 회원가입
	public Member selectOne(Member vo); // 로그인 확인
}
