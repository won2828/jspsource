package service;

import java.util.List;

import dto.BookDTO;

public interface BookService {
	public List<BookDTO> list(String keyword);

	public BookDTO read(int code);

	public boolean update(BookDTO updateDto);
	
	public boolean delete(int code);
	
	public boolean insert(BookDTO insertDto);
}