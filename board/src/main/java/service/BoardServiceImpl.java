package service;

import java.util.List;

import dao.BoardDAO;
import dto.BoardDTO;

public class BoardServiceImpl implements BoardService {
	
	private BoardDAO dao = new BoardDAO();

	@Override
	public List<BoardDTO> listAll() {		
		return dao.getList();
	}

	@Override
	public BoardDTO getRow(int bno) {		
		return dao.read(bno);
	}

	@Override
	public boolean update(BoardDTO updateDto) {		
		return dao.update(updateDto)==1?true:false;
	}

	@Override
	public boolean delete(BoardDTO deleteDto) {		
		return dao.delete(deleteDto)==1?true:false;
	}

	@Override
	public boolean create(BoardDTO insertDto) {		
		return dao.insert(insertDto)==1?true:false;
	}

	@Override
	public boolean hitUpdate(int bno) {		
		return dao.updateReadCnt(bno)==1?true:false;
	}

}


