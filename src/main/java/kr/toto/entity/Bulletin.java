package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Bulletin {
	
	private int bNum;
	private int mNum;
	private int bFileOrQuiz;
	private String bTitle;
	private String bContent;
	private String bWord;
	private String bFile1;
	private String bFile2;
	private String bFile3;
	private Date bDate;
	private int bSelect;
}
