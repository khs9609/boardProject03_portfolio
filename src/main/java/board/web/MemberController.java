package board.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import board.service.MemberService;
import board.service.MemberVO;

@Controller
public class MemberController {
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	/* 회원가입 페이지 */
	@RequestMapping("memberWrite.do")
	public String memberWrite() {
		
		return "member/memberWrite";
	}
	
	/* 회원가입 처리 */
	@RequestMapping("/memberWriteSave.do")
	@ResponseBody
	public String insertMember(MemberVO vo) throws Exception{
		
		String msg = "";
		String result = memberService.insertMember(vo);
		if(result == null) {
			msg = "ok";
		}
		
		return msg;
	}
	
	/* 아이디 중복 체크 */
	@RequestMapping("idCheck.do")
	@ResponseBody
	public String idCheck(MemberVO vo) throws Exception {
		
		String msg = "";
		int count = memberService.countMember(vo);
		
		if(count == 0) {
			msg = "ok";
		}
		
		return msg;
	}
	
	
	/* 로그인 페이지*/
	@RequestMapping("memberLogin.do")
	public String loginWrite() {
		
		return "member/memberLogin";
	}
	
	/* 로그인 처리*/
	@ResponseBody
	@RequestMapping("memberLoginSub.do")
	public String loginSub(MemberVO vo, HttpSession session) throws Exception {
		
		String msg = "";
		int count = memberService.selectMember(vo);
		if(count == 1) {
			session.setAttribute("SessionUserID", vo.getUserid());
			msg = "ok";
		}
		
		return msg;
	}
	
	/* 로그아웃 처리*/
	@RequestMapping("logout.do")
	public String logout(HttpSession session) throws Exception{
		
		session.removeAttribute("SessionUserID");
		
		return "member/memberLogin";
	}
	
	
}
