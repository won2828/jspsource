package dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SearchDTO {
	private String criteria;
	private String keyword;

	// page 정보
	private int page;
	private int amount;
	
	
	public SearchDTO(int page, int amount) {
		super();
		this.page = page;
		this.amount = amount;
	}		
}
