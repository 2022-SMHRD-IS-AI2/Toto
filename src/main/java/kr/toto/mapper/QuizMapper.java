package kr.toto.mapper;

import java.util.ArrayList;
import java.util.List;

import kr.toto.entity.Member;
import kr.toto.entity.Quiz;

public interface QuizMapper {

	public int insertQ(Quiz vo);
	public ArrayList<Quiz> selectMyQuiz(Member vo);
	
}
