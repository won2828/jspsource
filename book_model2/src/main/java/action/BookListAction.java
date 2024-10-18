package action;

import java.net.http.WebSocket.Listener;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BookDTO;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookListAction implements Action {
	
	private String path;
	

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//1. 검색에서 오는 경우
		String keyword = request.getParameter("keyword");
		
		
		//2. service 호출
		BookService service = new BookServiceImpl();
		List<BookDTO> list= service.list(keyword);
		
		request.setAttribute("list", list);
		request.setAttribute("keyword", keyword);
		
		// (request.setAttribute) => forward => false
		return new ActionForward(path, false);
	}

}

