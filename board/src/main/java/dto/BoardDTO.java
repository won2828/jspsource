package dto;

import java.util.Date;

import lombok.Data;

// @Data == @Getter, @Setter, @EqualsAndHashCode, @toString, @NoArgsContructors


@Data
public class BoardDTO {
	private int bno;
	private String name;
	private String password;
	private String title;
	private String content;
	private String attach;
	private int reRef;
	private int reLev;
	private int reSeq;
	private int readcnt;
	private Date regdate;	
}
