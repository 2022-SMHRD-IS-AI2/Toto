package kr.toto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BulletinController {
	
	@GetMapping("/registerBoard.do")
	public String registerBoard() { //Bulletn vo 변수로
		// mapper.insertBoard(vo);
		return "bulletin/bulletin"; 
	}
}  
