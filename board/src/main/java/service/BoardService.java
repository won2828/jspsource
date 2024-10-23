package service;

import java.util.List;

import dto.BoardDTO;

// CRUD 호출

public interface BoardService {
	List<BoardDTO> listAll();
	BoardDTO getRow(int bno);
	boolean update(BoardDTO updateDto);
	boolean delete(BoardDTO deleteDto);
	boolean create(BoardDTO insertDto);	
	
	boolean hitUpdate(int bno);
}
