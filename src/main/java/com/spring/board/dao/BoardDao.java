package com.spring.board.dao;
 
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.dto.BoardDto;
import com.spring.board.form.BoardForm;
 
@Repository
public class BoardDao {
 
    @Autowired
    private SqlSessionTemplate sqlSession;
 
    private static final String NAMESPACE = "com.spring.board.boardMapper";
 
    // 게시판 List조회  
    public List<BoardDto> getBoardList(BoardForm boardForm) throws Exception {
        
        return sqlSession.selectList(NAMESPACE + ".getBoardList", boardForm);
    }
    
    // 게시판  Hit update 
    public int updateBoardHits(BoardForm boardForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateBoardHits", boardForm);
    }
    
    // 게시판 BoardDetail  
    public BoardDto getBoardDetail(BoardForm boardForm) throws Exception {
        
        return sqlSession.selectOne(NAMESPACE + ".getBoardDetail", boardForm);
    }
    
    // 게시판  Insert     
    public int insertBoard(BoardForm boardForm) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertBoard", boardForm);
    }
    
    // 게시판 Delete  
    public int deleteBoard(BoardForm boardForm) throws Exception {
        
        return sqlSession.delete(NAMESPACE + ".deleteBoard", boardForm);
    }
    
    // 게시판 Update  
    public int updateBoard(BoardForm boardForm) throws Exception {
        
        return sqlSession.update(NAMESPACE + ".updateBoard", boardForm);
    }
    
    
    
    
}
