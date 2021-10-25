package board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class boardController {
	
	@RequestMapping("test1.do")
	public String test01() {
		
		return "board/test1";
	}
	
	// 메인 페이지
	@RequestMapping("main.do")
	public String Main() {
		
		return "board/main";
	}
	
	// 게시판 목록 보기
	@RequestMapping("boardList.do")
	public String BoardList() {
		return "board/boardList";
	}
}
