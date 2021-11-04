package board.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import board.service.BoardService;
import board.service.BoardVO;

@Controller
public class boardController {
	
	@Resource(name="boardService")
	public BoardService boardService;
	
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
	
	// 게시판 글쓰기
	@RequestMapping("boardWrite.do")
	public String boardWrite() {
	
		return "board/boardWrite";
	}
	
	// 글 저장 처리
	@ResponseBody
	@RequestMapping("boardWriteSave.do")
	public String insertBoard(BoardVO vo) throws Exception {
		
		String result = boardService.insertBoard(vo);
		String msg = "";
		if(result == null) msg = "ok";
		else msg ="fail";
		
		return msg;
	}
}
