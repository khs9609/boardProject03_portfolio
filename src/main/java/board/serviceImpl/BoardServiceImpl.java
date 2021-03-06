package board.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import board.service.BoardService;
import board.service.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Resource(name="boardDAO")
	public BoardDAO boardDAO;
	
	@Override
	public String insertBoard(BoardVO vo) throws Exception {
		return boardDAO.insertBoard(vo);
	}

	@Override
	public List<?> selectBoard(BoardVO vo) throws Exception {
		return boardDAO.selectBoard(vo);
	}

	@Override
	public int totalBoard(BoardVO vo) throws Exception {
		return boardDAO.totalBoard(vo);
	}

	@Override
	public BoardVO selectDetail(int unq) throws Exception {
		return boardDAO.selectDetail(unq);
	}

	@Override
	public int updateHits(int unq) throws Exception {
		return boardDAO.updateHits(unq);
	}

	@Override
	public int updateBoard(BoardVO vo) throws Exception {
		return boardDAO.updateBoard(vo);
	}

	@Override
	public int passCheck(BoardVO vo) throws Exception {
		return boardDAO.passCheck(vo);
	}

	@Override
	public int deleteBoard(BoardVO vo) throws Exception {
		return boardDAO.deleteBoard(vo);
	}

}
