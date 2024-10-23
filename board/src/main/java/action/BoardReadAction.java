package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BoardDTO;
import lombok.AllArgsConstructor;
import service.BoardService;
import service.BoardServiceImpl;


@AllArgsConstructor
public class BoardReadAction implements Action {
	
	private String path;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardService service = new BoardServiceImpl();			
		BoardDTO dto = service.getRow(bno);		
		
		request.setAttribute("dto", dto);		
		
		return new ActionForward(path, false);
	}
}
