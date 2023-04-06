package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Favor {
	private int fTo;
	private int fFrom;
	private Date fDate;
}
