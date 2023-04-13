package kr.toto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.toto.entity.BReple;
import kr.toto.entity.Bulletin;
import kr.toto.mapper.BoardMapper;

@Controller
public class BoardController {

	@Autowired
	BoardMapper mapper;
	
	
	@RequestMapping("fileSelect.do")
	public String fileSelect(Model model, int num) {
		List<Bulletin> vo = mapper.getAllFile(num);
		model.addAttribute("fileVO", vo);
		return "bulletin/fileBulletin";
	}
	@RequestMapping("quizSelect.do")
	public String quizSelect(Model model, int num) {
		List<Bulletin> vo = mapper.getAllQuiz(num);
		model.addAttribute("quizVO", vo);
		return "bulletin/quizBulletin";
	}
	@GetMapping("registerBoard.do")
	public String registerBoard() {
				
		
		return "bulletin/writeBoard";
	}
	@PostMapping("registerBoard.do")
	public String registerBoard(Bulletin vo) {
		mapper.writeBoard(vo);
		
		
		return null;
	}
	@RequestMapping("seeInBoard.do")
	public String seeInBoard(Model model, Bulletin vo) {
		Bulletin info = mapper.seeInBoard(vo);
		List<BReple> reple = mapper.seeInReple(vo);
		model.addAttribute("info",info);
		model.addAttribute("reple",reple);
		return "bulletin/inboard";
	}
	
	
}
