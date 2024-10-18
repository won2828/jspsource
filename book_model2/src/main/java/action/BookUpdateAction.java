package action;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BookDTO;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookUpdateAction implements Action {

	private String path;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 1.
		BookDTO updateDto = new BookDTO();
		updateDto.setCode(Integer.parseInt(request.getParameter("code")));
		updateDto.setPrice(Integer.parseInt(request.getParameter("price")));
		updateDto.setDescription(request.getParameter("description"));	
		
		// 검색 시 추가
		String keyword  = request.getParameter("keyword");
		
		// 2. service 호출
		BookService service = new BookServiceImpl();		
		boolean updateFlag = service.update(updateDto);
		
		if(updateFlag) {
			// 1 리턴 상세조회   /read.do?code=1003
			path += "?code="+updateDto.getCode()+"&keyword="+URLEncoder.encode(keyword, "utf-8");
		}else {
			// 0 리턴 수정페이지
			path = "/modify.do?code="+updateDto.getCode()+"&keyword="+URLEncoder.encode(keyword, "utf-8");
		}
		
		return new ActionForward(path, true);
	}

}





