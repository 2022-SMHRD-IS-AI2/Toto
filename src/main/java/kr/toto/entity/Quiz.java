package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Quiz {
	private int qNum;
	private int pNum;
	private String qQuest;

	private String qWrong1;
	private String qWrong2;
	private String qWrong3;
	private String qWrong4;
	private String qAnswer;
	private String qComment;

	private Date qDate;
	private String qType;

	private int mNum;
	private int qStar;
	
}
