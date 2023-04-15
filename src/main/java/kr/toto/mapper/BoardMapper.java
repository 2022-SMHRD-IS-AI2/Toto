package kr.toto.mapper;

import java.util.List;

import kr.toto.entity.BReple;
import kr.toto.entity.Bulletin;
import kr.toto.entity.Paragraph;

public interface BoardMapper {

	
	public List<Bulletin> getAllFile(int num);
	public List<Bulletin> getAllQuiz(int num);
	public void writeParagraph(Paragraph vo);
	public void writeBoard(Bulletin vo);
	public Bulletin seeInBoard(Bulletin vo);
	public List<BReple> seeInReple(Bulletin vo);
	public void writeReple(BReple vo);
	public void wirteReReple(BReple vo);
	public List<Bulletin> searchContent(String search);
	public void uploadFile(Bulletin vo);
}


