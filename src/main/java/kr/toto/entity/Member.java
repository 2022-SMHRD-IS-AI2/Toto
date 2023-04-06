package kr.toto.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Member {

	private int mNum;
	private String mEmail;
	private String mPw;
	private String mNick;
	private String mProfile;
	private String mBestQuiz;
	private int mLike;
	private String mCareer;
	private String mPhone;
	private Date mJoinDate;
	private Date mModifyDate;
	private String mName;

}
