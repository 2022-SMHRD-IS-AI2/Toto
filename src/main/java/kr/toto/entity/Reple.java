package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Reple {
	private int rNum;
	private int mNum;
	private String rContent;
	private int rParent;
	private int bNum;
	private Date bDate;
}
