package kr.toto.mapper;

import java.util.ArrayList;
import java.util.List;

import kr.toto.entity.Paragraph;
import kr.toto.entity.Quiz;

public interface QuizMapper {

	public void insertP(Paragraph vo);
	public void insertQ(Quiz vo);
	public ArrayList<Quiz> selectMyQuiz(Quiz vo);
	
}
