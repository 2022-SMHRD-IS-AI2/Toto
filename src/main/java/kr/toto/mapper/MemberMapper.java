package kr.toto.mapper;

import kr.toto.entity.Member;

public interface MemberMapper {
	
	public int insert(Member vo); // 회원가입
	public Member selectOne(Member vo); // 로그인 확인
	public Member updateMember(Member vo); 	// updateMember SQL~~
	public Member get(String nick); 	// select SQL~~
	public int remove(String nick);		// delete SQL
	public void modifyPw(Member vo);
	public void followMember(String to, String from);
	public void updateFollowMember(String to);
	public int selectFollower(String to);
}
 