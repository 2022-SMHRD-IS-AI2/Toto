package kr.toto.controller;

import java.io.File;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Map;

import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.toto.entity.BReple;
import kr.toto.entity.Bulletin;
import kr.toto.mapper.BoardMapper;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
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
		return "redirect:/fileSelect.do";
	}
	
	@RequestMapping("seeInBoard.do")
	public String seeInBoard(Model model, Bulletin vo) {
		Bulletin info = mapper.seeInBoard(vo);
		List<BReple> reple = mapper.seeInReple(vo);
		model.addAttribute("info",info);
		model.addAttribute("reple",reple);
		return "bulletin/inboard";
	}
	
	
	/*
	 * @RequestMapping(value ="writeBoard", method=RequestMethod.POST) public String
	 * uploadFormPost(MultipartFile[] b_word) {
	 * 
	 * String uploadFolder = "C:\\test\\upload";
	 * 
	 * for(MultipartFile mulitpartFile : b_word) {
	 * System.out.println(mulitpartFile.getOriginalFilename());
	 * System.out.println(mulitpartFile.getSize());
	 * 
	 * File saveFile = new File(uploadFolder, mulitpartFile.getOriginalFilename());
	 * 
	 * try { mulitpartFile.transferTo(saveFile); } catch (Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * 
	 * } return "redirect:fileSelect.do"; }
	 */
	
	@GetMapping("filePractice.do")
	public String filePractice(){
		return "bulletin/filePractice";
	}
	@PostMapping("filePractice.do")
	public String filePractice(MultipartFile[] files) {
		// files란
		
		return null;
	}
	@PostMapping( value = "search.do")
	public ResponseEntity<List<Bulletin>> search(String searchVal){
		System.out.println(searchVal);
		List<Bulletin> searchList =  mapper.searchContent(searchVal);
		System.out.println("그런거지?");
		System.out.println(searchList);
		return new ResponseEntity(searchList, HttpStatus.OK);
	}
	
	

	
}
