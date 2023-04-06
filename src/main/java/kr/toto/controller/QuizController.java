package kr.toto.controller;

import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.toto.entity.Quiz;

@Controller
public class QuizController {
	
	
	@GetMapping("/generateP.do")
	public String generateP() {
	
		return "quiz/generateP";
	}
	
	@PostMapping("generateP.do")
	public String generateP(String sentence) { //, RedirectAttributes rttr
//		rttr.addAttribute("sen", sentence);
		return "redirect:http://127.0.0.1:8000/hello";
		
	}
}
