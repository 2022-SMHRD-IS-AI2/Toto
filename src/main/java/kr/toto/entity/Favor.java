package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Favor {
	private String f_to;
	private String f_from;
	private Date f_date;
}
