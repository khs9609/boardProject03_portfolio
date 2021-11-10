package board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	/* 로그인 페이지*/
	@RequestMapping("memberLogin.do")
	public String loginWrite() {
		
		return "member/memberLogin";
	}
	
	/* 회원가입 페이지 */
	@RequestMapping("memberWrite.do")
	public String memberWrite() {
		
		return "member/memberWrite";
	}
}
