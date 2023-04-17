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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JacksonInject.Value;

import kr.toto.entity.BReple;
import kr.toto.entity.Bulletin;
import kr.toto.mapper.BoardMapper;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
public class BoardController {

	@Autowired
	BoardMapper mapper;
	
	
	@RequestMapping("/fileSelect.do")
	public String fileSelect(Model model, Integer num) {
		List<Bulletin> vo = mapper.getAllFile(num);
		model.addAttribute("fileVO", vo);
		return "bulletin/fileBulletin";
	}
	@RequestMapping("/quizSelect.do")
	public String quizSelect(Model model, int num) {
		List<Bulletin> vo = mapper.getAllQuiz(num);
		model.addAttribute("quizVO", vo);
		return "bulletin/quizBulletin";
	}
	@GetMapping("/registerBoard.do")
	public String registerBoard() {   
				
		
		return "bulletin/writeBoard";
	}
	/*
	 * @PostMapping("registerBoard.do") public String registerBoard(Bulletin vo) {
	 * mapper.writeBoard(vo); return "redirect:/fileSelect.do"; }
	 */
	
	@RequestMapping("/seeInBoard.do")
	public String seeInBoard(Model model, Bulletin vo) {
		Bulletin info = mapper.seeInBoard(vo);
		List<BReple> reple = mapper.seeInReple(vo);
		model.addAttribute("info",info);
		model.addAttribute("reple",reple);
		return "bulletin/inboard";
	}
	
	@GetMapping("/filePractice.do")
	public String filePractice(){
		return "bulletin/filePractice";
	}
	@PostMapping("/filePractice.do")
	public String filePractice(MultipartFile[] files) {
		// files란
		
		return null;
	}
	@PostMapping("/search.do")
	public ResponseEntity<List<Bulletin>> search(String searchVal){
		System.out.println(searchVal);
		List<Bulletin> searchList =  mapper.searchContent(searchVal);
		System.out.println("그런거지?");
		System.out.println(searchList);
		return new ResponseEntity(searchList, HttpStatus.OK);
	}
	
	@PostMapping("/registerBoard.do")
	public String writeReple(MultipartFile[] files, Bulletin vo,RedirectAttributes rttr) throws Exception {
		System.out.println("여기까지 왔음?");
		System.out.println(vo.getM_nick());
		System.out.println(vo.getB_content());
		System.out.println(vo.getB_file_or_quiz());
		System.out.println(vo.getB_title());
		
		
		String today = new SimpleDateFormat("yyMMdd").format(new Date());
		String saveFolder = "C:\\upload\\tmp";
		System.out.println(saveFolder);
		java.io.File folder = new java.io.File(saveFolder);
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		for(MultipartFile mfile: files) {
			System.out.println("몇번 실행되느지 보자!");
			String originalFileName = mfile.getOriginalFilename();
			if(!originalFileName.isEmpty()) {
				String saveFileName = originalFileName+ today+originalFileName.substring(originalFileName.lastIndexOf('.'));
				System.out.println(saveFileName);
				try {
					mfile.transferTo(new java.io.File(folder, saveFileName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		System.out.println("여기는?");
		if(files[0]!=null){vo.setB_file1(files[0].getOriginalFilename()+today);}
		if(files[1]!=null){vo.setB_file2(files[1].getOriginalFilename()+today);}
		if(files[2]!=null){vo.setB_file3(files[2].getOriginalFilename()+today);}
		System.out.println("여기는요?");
		mapper.writeBoard(vo);
		System.out.println("여기가 문제냐?");
		rttr.addAttribute("num",0);
//		int cnt =  mapper.writeReple(reple);
		
		
		
		
		return "redirect:/fileSelect.do";
	}
	
	
		
	/*
	 * @PostMapping(value = "/registerBoard.do") public String
	 * registerBoard(MultipartFile[] files ,Bulletin vo) throws IOException {
	 * System.out.println(vo.getB_content());
	 * System.out.println(vo.getB_file_or_quiz());
	 * System.out.println(vo.getB_num()); System.out.println(vo.getB_select());
	 * System.out.println(vo.getB_title()); System.out.println(vo.getM_nick());
	 * 
	 * 
	 * // 파일 저장 경로 설정 if(files[0]!=null)
	 * {vo.setB_file1(files[0].getOriginalFilename());} if(files[1]!=null)
	 * {vo.setB_file2(files[1].getOriginalFilename());} if(files[2]!=null)
	 * {vo.setB_file3(files[2].getOriginalFilename());} mapper.uploadFile(vo);
	 * String uploadPath = "C:\\test\\upload";
	 * 
	 * for(MultipartFile file : files) { // 업로드한 파일의 이름 String fileName = String
	 * originalFileName = file.getOriginalFilename();
	 * 
	 * 
	 * // 파일 저장 File saveFile = new File(uploadPath + fileName); File saveFile = new
	 * File(uploadPath + originalFileName); file.transferTo(saveFile); } // 파일 업로드
	 * 성공 후 처리할 로직 작성
	 * 
	 * return "redirect:/fileSelect.do"; }
	 */
	}

	

	

