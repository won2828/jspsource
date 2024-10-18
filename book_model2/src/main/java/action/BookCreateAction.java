package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BookDTO;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookCreateAction implements Action {

	private String path;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 1.
		BookDTO insertDto = new BookDTO();
		insertDto.setCode(Integer.parseInt(request.getParameter("code")));
		insertDto.setPrice(Integer.parseInt(request.getParameter("price")));
		insertDto.setTitle(request.getParameter("title"));	
		insertDto.setWriter(request.getParameter("writer"));	
		insertDto.setDescription(request.getParameter("description"));	
		
		// 2. service 호출
		BookService service = new BookServiceImpl();		
		boolean insertFlag = service.insert(insertDto);
		
		if(insertFlag) {
			// 1 리턴 상세조회   /read.do?code=1003
			path += "?code="+insertDto.getCode();
		}else {
			// 0 리턴 수정페이지
			path = "/book/create.jsp";
		}
		
		return new ActionForward(path, true);
	}

}



