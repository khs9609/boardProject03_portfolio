package board.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	public String BoardList(BoardVO vo, ModelMap model) throws Exception {
		
		int unit = 5;
		
		int total = boardService.totalBoard(vo);

		int totalPage = (int)Math.ceil((double)total/unit);
		
		int viewPage = vo.getViewPage();
		// 임의로 viewPage를 건드려 없는 페이지를 불러오거나, 아무것도 건드리지 않았을 때
		if(viewPage > totalPage || viewPage < 1) {
			viewPage = 1;
		}
		
		int startIndex = (viewPage-1) * unit + 1;
		int endIndex = startIndex + (unit - 1);
		
		int startRowno = total - (viewPage - 1) * unit;

		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		
		
		List<?> list = boardService.selectBoard(vo);
		
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("rowNum", startRowno);
		
		
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
	
	// 글 상세 보기
	@RequestMapping("boardDetail.do")
	public String selectDetail(BoardVO vo, ModelMap model) throws Exception {
		
		
		BoardVO boardVO = boardService.selectDetail(vo.getUnq());
		
		model.addAttribute("boardVO", boardVO);
		
		return "board/boardDetail";
	}
}
