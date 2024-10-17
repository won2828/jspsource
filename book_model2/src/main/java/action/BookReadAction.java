package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BookDTO;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookReadAction implements Action {

	private String path;
	
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 1.
		int code = Integer.parseInt(request.getParameter("code"));	
		
		// 2. service 호출
		BookService service = new BookServiceImpl();
		BookDTO dto = service.read(code);
		
		request.setAttribute("dto", dto);
		
		return new ActionForward(path, false);
	}

}
