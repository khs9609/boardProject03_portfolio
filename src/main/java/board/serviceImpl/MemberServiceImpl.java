package board.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import board.service.MemberService;
import board.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public String insertMember(MemberVO vo) throws Exception {
		return memberDAO.insertMember(vo);
	}

	@Override
	public int countMember(MemberVO vo) throws Exception {
		return memberDAO.countMember(vo);
	}

	@Override
	public int selectMember(MemberVO vo) throws Exception {
		return memberDAO.selectMember(vo);
	}

}
