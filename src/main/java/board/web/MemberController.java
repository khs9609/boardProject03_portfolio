package board.web;

import javax.annotation.Resource;

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
	
	
	
	
	
	/* 로그인 페이지*/
	@RequestMapping("memberLogin.do")
	public String loginWrite() {
		
		return "member/memberLogin";
	}
}
