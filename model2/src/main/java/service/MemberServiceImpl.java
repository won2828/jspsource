package service;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberServiceImpl implements MemberService {
	// DAO 호출
	
	
	MemberDAO dao = new MemberDAO();
	

	@Override
	public int create(MemberDTO memberDTO) {
		
		return dao.create(memberDTO);
	}

	@Override
	public MemberDTO read(MemberDTO memberDTO) {
		
		return dao.read(memberDTO);
	}

	@Override
	public int update(MemberDTO memberDTO) {
		
		return dao.update(memberDTO);
	}

	@Override
	public int delete(MemberDTO memberDTO) {
		
		return dao.delete(memberDTO);
	}

}
