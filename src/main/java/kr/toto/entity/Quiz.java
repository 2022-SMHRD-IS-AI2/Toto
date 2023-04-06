package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Quiz {
	private int q_num;
	private int p_num;
	private String q_quest;

	private String q_wrong1;
	private String q_wrong2;
	private String q_wrong3;
	private String q_wrong4;
	private String q_answer;
	private String q_comment;

	private Date q_date;
	private String q_type;

	private int m_num;
	private int q_star;
	
}
