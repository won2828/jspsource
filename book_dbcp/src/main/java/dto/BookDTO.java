package dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// 기본생성자, 인자를 모두 받는 생성자
@AllArgsConstructor @NoArgsConstructor
// getter, setter, toString
@Getter @Setter @ToString

public class BookDTO {
	// 테이블과 동일한 모양	
	private int code;
	private String title;
	private String writer;
	private int price;
	private String description;
		
	
}
