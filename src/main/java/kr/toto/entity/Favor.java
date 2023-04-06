package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Favor {
	private int f_to;
	private int f_from;
	private Date f_date;
}
