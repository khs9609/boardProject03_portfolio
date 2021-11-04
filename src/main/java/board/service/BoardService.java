package board.service;

import java.util.List;

public interface BoardService {
	
	// 게시판 저장처리
	public String insertBoard(BoardVO vo) throws Exception;
	
	// 게시글 목록 보기
	public List<?> selectBoard(BoardVO vo) throws Exception;
}
