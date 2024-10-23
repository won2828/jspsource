package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BoardDTO;
import lombok.AllArgsConstructor;
import service.BoardService;
import service.BoardServiceImpl;


@AllArgsConstructor
public class BoardUpdateAction implements Action {
	
	private String path;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		BoardDTO updateDto = new BoardDTO();
		
		updateDto.setBno(Integer.parseInt(request.getParameter("bno")));
		updateDto.setPassword(request.getParameter("password"));
		updateDto.setTitle(request.getParameter("title"));
		updateDto.setContent(request.getParameter("content"));
		
		BoardService service = new BoardServiceImpl();	
		boolean updateFlag = service.update(updateDto);
		
		if(updateFlag) {
			// 성공 시 bno 보내기(상세조회 시 필요)
			path += "?bno="+updateDto.getBno();
		}else {
			path = "/modify.do?bno="+updateDto.getBno();
		}	
		
		return new ActionForward(path, true);
	}
}













