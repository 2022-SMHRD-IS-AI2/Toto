package kr.toto.mapper;

import kr.toto.entity.Member;

public interface MemberMapper {
	
	public int insert(Member vo); // 회원가입
	public Member selectOne(Member vo); // 로그인 확인
	public Member updateMember(Member vo); 	// updateMember SQL~~
	public Member get(int num); 	// select SQL~~
	public int remove(int num);		// delete SQL
	
}
 