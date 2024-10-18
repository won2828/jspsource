package service;

import dao.MemberDAO;
import dto.ChangeDTO;
import dto.MemberDTO;

public class MemberServiceImpl implements MemberService {
	
	private MemberDAO dao = new MemberDAO();
	@Override
	public MemberDTO login(MemberDTO dto) {
		return dao.isLogin(dto);
	}

	@Override
	public boolean join(MemberDTO dto) {
		return dao.insert(dto)==1?true:false;
	}

	@Override
	public boolean duplicateId(String userid) {
		return dao.dupId(userid);
	}

	@Override
	public boolean changePassword(ChangeDTO changeDTO) {
		return dao.update(changeDTO)==1?true:false;
	}

}
