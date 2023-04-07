package kr.toto.controller;

import java.util.List;

import java.util.ArrayList;

import javax.ws.rs.core.Request;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.toto.entity.Bulletin;
import kr.toto.mapper.bulletinMapper;

@Controller
public class BulletinController {

	@Autowired // ☆☆☆☆
	private bulletinMapper mapper;

	@GetMapping("/registerBoard.do")
	public String registerBoard() { // Bulletn vo 변수로
		// mapper.insertBoard(vo);
		return "bulletin/fileBulletin";
	}

	@RequestMapping("/registerBoard.do") // list.do가 왔을때 처리할 메소드
	public String list(Model request) {
		// 게시판데이터를 Model과 연동하는 작업

		// 게시물 3개를 ArrayList 저장
		List<Bulletin> list = mapper.getAllList();
		// 객체바인딩 : 데이터(list)를 특정객체(HttpServletRequest)에 연결시키는 기술
		request.addAttribute("list", list);

		// ViewResolver ★★★ ->view의 논리적의 언어를 접두사와 접미사를 만들어준다
		// 어떤 JSP가 데이터를 가져가서 View를 만들것인지
		return "bulletin/fileBulletin";
		// 문제 발생시 어떻게 하느냐?
		// WEB-INF/views/list.jsp -> list.jsp ->? ${cnt}
	}

	@GetMapping("/writer.do")
	public String register() {

		return "writer/writer";
	}

	@RequestMapping("/inboard.do")
	public String register(Bulletin vo) { // title, content, writer이 넘어와야함 -> Board(파라미터 수집)
		mapper.register(vo); // 성공
		// 다시 리스트보기 페이지로 이동(/list.do)
		// redirect기입
		return "redirect:/registerBoard.do";
	}

	
	 

}