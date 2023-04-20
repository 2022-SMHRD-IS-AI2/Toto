package kr.toto.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ProcessBuilder.Redirect;
import java.net.URLEncoder;
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
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
import kr.toto.entity.Quiz;
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
	public String registerBoard(Model model,int num) {   
		model.addAttribute("num", num);
		
		return "bulletin/writeBoard";
	}
	/*
	 * @PostMapping("registerBoard.do") public String registerBoard(Bulletin vo) {
	 * mapper.writeBoard(vo); return "redirect:/fileSelect.do"; }
	 */
	
	@RequestMapping("/seeInBoard.do")
	public String seeInBoard(Model model, Bulletin vo) {
		Bulletin info = mapper.seeInBoard(vo);
		if(info.getB_file_or_quiz()==1) {
			int q_num = info.getQ_num();
			Quiz quiz = mapper.getQuizInBoard(q_num);
			model.addAttribute("quizInfo",quiz);
		}
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
	
	@PostMapping("/writeReple.do")
	public ResponseEntity writeReple(@RequestBody BReple reple){
		System.out.println(reple.getM_nick());
		int cnt = mapper.writeReple(reple);
		return new ResponseEntity(cnt, HttpStatus.OK);
	}
	
	@PostMapping("/registerBoard.do")
	public String writeReple(MultipartFile[] files, Bulletin vo,Quiz quiz,RedirectAttributes rttr) throws Exception {
		
		if(files.length > 0) {
			
		String today = new SimpleDateFormat("yyMMdd").format(new Date());
		String saveFolder = "C:\\upload\\tmp";
		System.out.println(saveFolder);
		java.io.File folder = new java.io.File(saveFolder);
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		for(MultipartFile mfile: files) {
			String originalFileName = mfile.getOriginalFilename();
			if(!originalFileName.isEmpty()) {
				String saveFileName = originalFileName+ today+originalFileName.substring(originalFileName.lastIndexOf('.'));
				try {
					mfile.transferTo(new java.io.File(folder, saveFileName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		if(files.length > 0){vo.setB_file1(files[0].getOriginalFilename()+today);}
		if(files.length > 1){vo.setB_file2(files[1].getOriginalFilename()+today);}
		if(files.length > 2){vo.setB_file3(files[2].getOriginalFilename()+today);}
		}
		if(vo.getB_file_or_quiz()==1) {
			System.out.println("여기?0");
			mapper.insertToGetNum(quiz);
			int quizNum = mapper.getQuizNum(quiz);
			System.out.println("여기?1");
			vo.setQ_num(quizNum);
			mapper.writeQuiz(vo);
			System.out.println("여기?2");
			rttr.addAttribute("num", 1);
			System.out.println("여기?3");
			return "redirect:/quizSelect.do";
		}
		else {
			mapper.writeBoard(vo);
			rttr.addAttribute("num",0);
//		int cnt =  mapper.writeReple(reple);
			return "redirect:/fileSelect.do";
		}
	}
	
	/*
	 * @PostMapping("/fileDownload/{file}") public void fileDownload(@PathVariable
	 * String file, HttpServletResponse response) throws IOException{ java.io.File f
	 * = new java.io.File("C:\\upload\\tmp",file);
	 * response.setContentType("application/download");
	 * response.setContentLength((int)f.length());
	 * response.setHeader("content-disposition",
	 * "attachment;filename=\""+file+"\""); OutputStream os =
	 * response.getOutputStream(); FileInputStream fis = new FileInputStream(f);
	 * FileCopyUtils.copy(fis, os); fis.close(); os.close(); }
	 */
	
}	