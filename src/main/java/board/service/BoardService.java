package board.service;

import java.util.List;

public interface BoardService {
	
	// 게시판 저장처리
	public String insertBoard(BoardVO vo) throws Exception;
	
	// 게시글 목록 보기
	public List<?> selectBoard(BoardVO vo) throws Exception;
	
	//게시물 총 갯수 Total
	public int totalBoard(BoardVO vo) throws Exception;
	
	// 게시물 상세보기 화면
	public BoardVO selectDetail(int unq) throws Exception;
	
	//조회수 증가
	public int updateHits(int unq) throws Exception;
}
