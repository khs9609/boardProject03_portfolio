package board.service;

public interface MemberService {
	
	//회원가입 처리
	public String insertMember(MemberVO vo) throws Exception;
	
	//아이디 중복체크
	public int countMember(MemberVO vo) throws Exception;
	
	//로그인 정보 확인
	public int selectMember(MemberVO vo) throws Exception;
	
}
