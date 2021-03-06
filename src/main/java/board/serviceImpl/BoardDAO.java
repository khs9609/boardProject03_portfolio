package board.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import board.service.BoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO  {

	public String insertBoard(BoardVO vo) {
		return (String) insert("boardDAO.insertBoard", vo);
	}

	public List<?> selectBoard(BoardVO vo) {
		return list("boardDAO.selectBoard", vo);
	}

	public int totalBoard(BoardVO vo) {
		return (int) select("boardDAO.totalBoard", vo);
	}

	public BoardVO selectDetail(int unq) {
		return (BoardVO) select("boardDAO.selectDetail", unq);
	}

	public int updateHits(int unq) {
		return update("boardDAO.updateHits", unq);
	}

	public int updateBoard(BoardVO vo) {
		return update("boardDAO.updateBoard", vo);
	}

	public int passCheck(BoardVO vo) {
		return (int) select("boardDAO.passCheck", vo);
	}
	public int deleteBoard(BoardVO vo) {
		return delete("boardDAO.deleteBoard", vo);
	}



}
