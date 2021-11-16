package board.serviceImpl;

import org.springframework.stereotype.Repository;

import board.service.MemberVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractDAO {
	
	public String insertMember(MemberVO vo) {
		return (String) insert("memberDAO.insertMember", vo);
	}

}
