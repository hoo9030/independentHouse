package project.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.Entity.Board;
import project.Repository.boardListRepository;

@Service
public class boardListService {

	@Autowired
	private boardListRepository repository;
	
	public List<Board> showBoardList() {
		// TODO Auto-generated method stub
		return repository.showBoardList();
	}

}
