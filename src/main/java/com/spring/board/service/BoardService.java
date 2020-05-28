package com.spring.board.service;
 
import java.util.HashMap;
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.spring.board.dao.BoardDao;
import com.spring.board.dto.BoardDto;
 
@Service
public class BoardService {
 
    @Autowired
    private BoardDao boardDao;
    // 게시판 read
    public BoardDto boardRead(HashMap<String, Object> updateBoard) throws Exception{
    	return boardDao.boardRead(updateBoard);
    }
    
    // 게시판 조회
    public List<BoardDto> getBoardList() throws Exception {
        return boardDao.getBoardList();
    }
 
    // 게시판 detail
    public BoardDto getBoardDetail(BoardDto boardMap) throws Exception {
    	return boardDao.getBoardDetail(boardMap);
    }
 
    // 게시판 insert
    public void boardWrite(HashMap<String, Object> boardWrite) throws Exception {
    		boardDao.boardWrite(boardWrite);
    }
 
    // 게시판 delete
    public void deleteBoard() throws Exception {
 
        
 
    }
 
    // 게시판 update
    public void updateBoard(HashMap<String, Object> updateBoard) throws Exception {
    	boardDao.updateBoard(updateBoard);
    }
    
    // 조회수 count
    public void countHit(int boardNum) throws Exception{
    	boardDao.countHit(boardNum);
    }
}
