package kr.toto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.toto.entity.Member;
import kr.toto.mapper.MemberMapper;

@Controller
public class MemberController {
	@Autowired
	private MemberMapper mapper;
	
	@RequestMapping("/")
	public String toto() {
		return "index";
	}
	
	@GetMapping("/join.do")
	public String join() {
		return "member/join";
	}
	
	@PostMapping("/join.do")
	public String join(Member vo) {
		int cnt = mapper.insert(vo);
		String path;
		if(cnt>0) {
			path="redirect:/";
		}else {			
			path="member/join";
		}
		return path;
	}
	
	@GetMapping("/login.do")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("/login.do")
	public String login(Member vo, HttpSession session) {
		// 매퍼로 회원 조회 -> 있으면 Session 만들기 -> 맞으면 메인, 틀리면 다시 로그인 페이지
		Member memberSession = mapper.selectOne(); 
		String path;
		if(memberSession!=null) {
			session.setAttribute("memberVO", memberSession);
			path="redirect:/";
		}else {
			path="member/login";
		}
		return path;
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
