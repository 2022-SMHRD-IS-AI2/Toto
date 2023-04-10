package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class BReple {
	private int r_num;
	private String m_nick;
	private String r_content;
	private int r_parent;
	private int b_num;
	private Date b_date;
	private Date b_modify_date;
}
