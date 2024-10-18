package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.BookDTO;
import dto.ChangeDTO;
import dto.MemberDTO;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;
import service.MemberService;
import service.MemberServiceImpl;

@AllArgsConstructor
public class MemberInfoAction implements Action {

	private String path;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 1.
		ChangeDTO changeDto = new ChangeDTO();
		changeDto.setUserid(request.getParameter("userid"));
		changeDto.setCurrentPassword(request.getParameter("current_password"));
		changeDto.setChangePassword(request.getParameter("change_password"));
		
		
		// 2. service 호출
		MemberService service = new MemberServiceImpl();		
		boolean updateFlag = service.changePassword(changeDto);
		
		if(updateFlag){
			HttpSession session = request.getSession();
			session.invalidate();
		} else {
			path = "/member/info.jsp";
		}
		
		return new ActionForward(path, true);
	}

}

