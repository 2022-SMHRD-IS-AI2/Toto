package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Bulletin {
	
	private int b_num;
	private String m_nick;
	private int b_file_or_quiz;
	private int b_like;
	private String b_title;
	private String b_content;
	private String b_file1;
	private String b_file2;
	private String b_file3;
	private Date b_modify_date;
	private Date b_date;
	private int b_select;
	private int q_num;
		
	}
	
	

