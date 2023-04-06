package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Bulletin {
	
	private int b_num;
	private int m_num;
	private int b_file_or_quiz;
	private String b_title;
	private String b_content;
	private String b_word;
	private String b_file1;
	private String b_file2;
	private String b_file3;
	private Date b_date;
	private int b_select;
	private int q_num;
}
