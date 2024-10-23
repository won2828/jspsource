package dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageDTO {
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private SearchDTO searchDTO;
	private int total;  // 전체 게시물 수
	
	public PageDTO(SearchDTO searchDTO, int total) {
		this.searchDTO = searchDTO;
		this.total = total;
		
		endPage = (int)(Math.ceil(searchDTO.getPage() / 10.0)) * 10;
		startPage = endPage - 9;
		
		int realEnd = (int)(Math.ceil((total / 1.0) / searchDTO.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
