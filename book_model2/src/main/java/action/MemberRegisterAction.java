package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.BookDTO;
import dto.MemberDTO;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;
import service.MemberService;
import service.MemberServiceImpl;

@AllArgsConstructor
public class MemberRegisterAction implements Action {

	private String path;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 1.
		MemberDTO insertDto = new MemberDTO();
		insertDto.setUserid(request.getParameter("userid"));
		insertDto.setPassword(request.getParameter("password"));
		insertDto.setName(request.getParameter("name"));
		
		// 2. service 호출
		MemberService service = new MemberServiceImpl();		
		boolean insertFlag = service.join(insertDto);
		
		if(!insertFlag){
			path = "/member/register.jsp";
		}
		
		return new ActionForward(path, true);
	}

}

