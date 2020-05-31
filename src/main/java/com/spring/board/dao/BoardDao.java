package com.spring.board.dao;
 
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.dto.BoardDto;
 
@Repository
public class BoardDao {
 
    @Autowired
    private SqlSessionTemplate sqlSession;
 
    private static final String NAMESPACE = "com.spring.board.boardMapper";
 
    public BoardDto boardRead(HashMap<String, Object> boardRead) throws Exception{
    	return sqlSession.selectOne(NAMESPACE + ".boardRead" ,boardRead);
    }
    
    // 게시판 List조회  
    public List<BoardDto> getBoardList() throws Exception {
        return sqlSession.selectList(NAMESPACE + ".getBoardList");
    }
    
    // 게시판  Hit update 
    public int updateBoardHits() throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateBoardHits");
    }
    
    // 게시판 BoardDetail  
    public BoardDto getBoardDetail(BoardDto boardMap) throws Exception {
        
        return sqlSession.selectOne(NAMESPACE + ".getBoardDetail", boardMap);
    }
    
    // 게시판  Insert     
    public void boardWrite(HashMap<String, Object> boardWrite) throws Exception {
         sqlSession.insert(NAMESPACE + ".boardWrite", boardWrite);
    }
    
    // 게시판 Delete  
    public int deleteBoard(HashMap<String, Object> deleteBoard) throws Exception {
        
        return sqlSession.delete(NAMESPACE + ".deleteBoard", deleteBoard );
    }
    
    // 게시판 Update  
    public int updateBoard(HashMap<String, Object> updateBoard) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateBoard", updateBoard);
    }
    
    // 조회수 count
    public void countHit(int boardNum) throws Exception{
    	sqlSession.update(NAMESPACE + ".countHit", boardNum);
 
    }
    
    
}
