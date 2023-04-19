package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Quiz {
	private int q_num;
	private String q_quest;

	private String q_wrong1;
	private String q_wrong2;
	private String q_wrong3;
	private String q_answer;
	private String q_sentence;
	private String q_paragraph;

	private Date q_date;
	private String q_type;

	private String m_nick;
	
}
