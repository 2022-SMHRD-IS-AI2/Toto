package kr.toto.mapper;

import java.util.List;

import kr.toto.entity.Bulletin;
import kr.toto.entity.Member;

public interface bulletinMapper {
	
	public List<Bulletin> getAllList();
	public void register(Bulletin vo);	// insert SQL~~
	public Bulletin get(int num); 	// select SQL~~
	public int remove(int num);	// delete SQL~~
	
}
