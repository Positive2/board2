package com.spring.board.controller;
 
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.dto.BoardDto;
import com.spring.board.dto.UserDto;
import com.spring.board.service.BoardService;
 
@Controller
public class BoardController {
 
    @Autowired
    private BoardService boardService;
 
    
    // 게시판 목록 페이지 이동 
    @RequestMapping( value = "/boardList")
    public String boardList(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "board/boardList";
    }
        
    // 게시판 목록 조회  
    @RequestMapping(value = "/getBoardList")
    @ResponseBody
    public ModelAndView getBoardList(HttpServletRequest request, HttpServletResponse response ) throws Exception {
 
    	ModelAndView mv = new ModelAndView();
    	List<BoardDto> getBoardList = boardService.getBoardList();
        mv.setViewName("board/boardList");
        mv.addObject("list", getBoardList);
        return mv;
    }
    
    // 게시판 상세 페이지 이동 
    @RequestMapping( value = "/boardDetail")
    public String boardDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
        return "board/boardDetail";
    }    
    
    // 게시판 상세 조회  
    @RequestMapping(value = "/getBoardDetail")
    public String getBoardDetail(@ModelAttribute BoardDto bdto, HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {
    	System.out.println(bdto.getBoard_num());
    	//글 가져오기
    	BoardDto boardList = boardService.getBoardDetail(bdto);
    	//조회수 count
    	boardService.countHit(bdto.getBoard_num());
    	
    	//model에 담아서 redirect로 경로 구하면 model 값날라감
    	model.addAttribute("list", boardList);
    	return "board/boardDetail";
    }
    
    // 게시판 글쓰기페이지로 이동 
    @RequestMapping( value = "/boardWrite")
    public String moveBoardWrite(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "board/boardWrite";
    }
    
    // 게시판 글쓰기 
    @RequestMapping( value = "board/boardWrite")
    public String boardWrite(@RequestParam HashMap<String, Object> boardWrite) throws Exception{
        
        boardService.boardWrite(boardWrite);
        
        return "redirect:/getBoardList";
    }
    
    // 게시판  삭제 
    @RequestMapping( value = "/boardDelete")
    @ResponseBody
    public void deleteBoard(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
    }
    
    // 게시판 글수정
    @RequestMapping( value = "/board/boardUpdate")
    public String boardUpdate(@RequestParam HashMap<String, Object> updateBoard, HttpServletRequest request, HttpServletResponse response ) throws Exception{
    	 
      	boardService.updateBoard(updateBoard);
 
    	return "redirect:/getBoardList";
    }
    // 게시판 수정 페이지로 이동
    @RequestMapping( value = "/boardUpdate")
    public String moveBoardUpdate( @RequestParam HashMap<String, Object> updateBoard,
    							  Model model,HttpSession session) throws Exception{
    	
    	//수정할 글 정보 가져옴 
    	BoardDto bdto = boardService.boardRead(updateBoard);
 
    	//현재 로그인 세션정보
    	UserDto udto = (UserDto) session.getAttribute("session");
    	
    	if(bdto.getBoard_writer().equals(udto.getU_id())) {
    		model.addAttribute("userContent", bdto);
    		return "board/boardUpdate";
    	}else {// 다시 보던 글로 
    		//수정할수없는 글입니다 alert만들기
    		return "redirect:getBoardDetail?board_num=" + updateBoard.get("board_num");
    	}
        
    }
    
    
}
