package kr.toto.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import java.net.HttpURLConnection;
import java.net.URL;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.toto.entity.Member;
import kr.toto.entity.Paragraph;
import kr.toto.entity.Quiz;
import kr.toto.mapper.QuizMapper;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.toto.entity.Quiz;


@Controller
public class QuizController {
	

	@Autowired
	QuizMapper mapper;

	
	@GetMapping("/generateP.do")
	public String generateP() {
	
		return "quiz/generateP";
	}

	@PostMapping("/generatP.do")
	public String generateP(Paragraph vo, RedirectAttributes rttr) {
		rttr.addAttribute("question", vo.getP_sentence());
		return "redirect:http://127.0.0.1:8000/hello";	
	}
	
	
// 여기 꼭 수정  + 일단 파이썬 서버하고 연결함
	@RequestMapping("/heehee.do")
	public String heehee() { //Paragraph vo, RedirectAttributes rttr
			
		//rttr.addAttribute("question",vo.getP_sentence());
		return "redirect:http://127.0.0.1:8000/hello";
	}
	@RequestMapping("/hoho.do")
	public String haha(Paragraph vo) {
		System.out.println(vo.getP_sentence());
		System.out.println(vo.getP_content());
		System.out.println(vo.getM_num());
		
		return null;
	}
	
	
//	@GetMapping("/generateQ.do")  이거는 fast에서 데이터 가지고 오면 하기
	
	@PostMapping("/generateQ.do") 
	public String generateQ(Quiz vo) { // 문제 저장을 눌렀을 때 로직
		
//		mapper.insertP(Paragraph vo);  이거는 그냥 위에 pragraph에서 하기 긔록 flash로 paragraph num 꼭 보내기
		mapper.insertQ(vo);
		
		return "";
	}
	
	@RequestMapping("/myQuestion.do")
	public String myQuestion(Model model, HttpSession session) {
		Member vo = (Member)session.getAttribute("memberVO");
		List<Quiz> quizs = mapper.selectMyQuiz(vo);
		model.addAttribute("quizs", quizs);
		return "mypage/myQuestion";
	}
	

	
	@PostMapping("generateP.do")
	public String generateP(String sentence) { //, RedirectAttributes rttr
//		rttr.addAttribute("sen", sentence);
		return "redirect:http://127.0.0.1:8000/hello";
		
	}

	}
