package board.serviceImpl;

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

}
