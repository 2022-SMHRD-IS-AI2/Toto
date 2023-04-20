package kr.toto.mapper;

import java.util.List;

import kr.toto.entity.BReple;
import kr.toto.entity.Bulletin;
import kr.toto.entity.Quiz;

public interface BoardMapper {

	
	public List<Bulletin> getAllFile(int num);
	public List<Bulletin> getAllQuiz(int num);
	public void writeBoard(Bulletin vo);
	public Bulletin seeInBoard(Bulletin vo);
	public List<BReple> seeInReple(Bulletin vo);
	public int writeReple(BReple vo);
	//public void wirteReReple(BReple vo);
	public List<Bulletin> searchContent(String search);
	public void uploadFile(Bulletin vo);
	public void insertToGetNum(Quiz quiz);
	public int getQuizNum(Quiz quiz);
	public void writeQuiz(Bulletin vo);
	public Quiz getQuizInBoard(int q_num);
	public void addSelect(Bulletin vo);
}


