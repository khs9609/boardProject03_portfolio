package board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("memberLogin.do")
	public String loginWrite() {
		return "member/memberLogin";
	}
}
