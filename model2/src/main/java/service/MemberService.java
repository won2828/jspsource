package service;

import dto.MemberDTO;

public interface MemberService {
	//DAO 의 CRUD 메소드 호출
	public int create(MemberDTO memberDTO);
	public MemberDTO read(MemberDTO memberDTO);
	public int update(MemberDTO memberDTO);
	public int delete(MemberDTO memberDTO);
}
