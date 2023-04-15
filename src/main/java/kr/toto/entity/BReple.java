package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class BReple {
	private int b_num;
	private String m_nick;
	private String r_content;
	private Date r_date;
	private int r_group;
	private Date r_modify_date;
	private int r_num;
	private int r_parent;
}
