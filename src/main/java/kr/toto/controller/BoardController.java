package kr.toto.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ProcessBuilder.Redirect;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	/*
	 * @PostMapping("registerBoard.do") public String registerBoard(Bulletin vo) {
	 * mapper.writeBoard(vo); return "redirect:/fileSelect.do"; }
	 */
	
	@RequestMapping("seeInBoard.do")
	public String seeInBoard(Model model, Bulletin vo) {
		Bulletin info = mapper.seeInBoard(vo);
		List<BReple> reple = mapper.seeInReple(vo);
		model.addAttribute("info",info);
		model.addAttribute("reple",reple);
		return "bulletin/inboard";
	}
	
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
		
	 @PostMapping(value = "registerBoard.do")
	    public String registerBoard(@RequestParam("file") MultipartFile[] files ,Bulletin vo) throws IOException {
	        // 파일 저장 경로 설정
		    mapper.uploadFile(vo);
	        String uploadPath = "C:\\test\\upload";
	        왜안되는거야
			/*
			 * for(MultipartFile file : files) { // 업로드한 파일의 이름 String fileName =
			 * files.getOriginalFilename();
			 * 
			 * // 파일 저장 File saveFile = new File(uploadPath + fileName);
			 * files.transferTo(saveFile); } // 파일 업로드 성공 후 처리할 로직 작성
			 */
	        return "redirect:/fileSelect.do";
	    }
	}

	

	

