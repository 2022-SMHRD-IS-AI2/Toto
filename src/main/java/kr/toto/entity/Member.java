package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Member {

	private int m_num;
	private String m_email;
	private String m_pw;
	private String m_nick;
	private String m_profile;
	private String m_best_quiz;
	private int m_like;
	private String m_career;
	private String m_phone;
	private Date m_join_date;
	private Date m_modify_date;
	private String m_name;

}
