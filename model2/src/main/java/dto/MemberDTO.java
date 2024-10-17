package dto;


public class MemberDTO {
	// 테이블과 동일한 모양	
	private String userid;
	private String name;
	private String password;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public MemberDTO(String userid, String name, String password) {
		super();
		this.userid = userid;
		this.name = name;
		this.password = password;
	}
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", name=" + name + ", password=" + password + "]";
	}
		
	
}
