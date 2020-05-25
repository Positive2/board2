package com.spring.board.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.dao.UserDao;
import com.spring.board.dto.UserDto;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	//로그인을 위한 메서드
		public UserDto login(HashMap<String, Object> userMap) throws Exception{
			return userDao.login(userMap); 
		}
	
	// 아이디 중복 확인 매서드
	public int idCheck(String checkId) throws Exception{
		int check = -2;
		check = userDao.idCheck(checkId);
		return check;
	}
	
	
}
