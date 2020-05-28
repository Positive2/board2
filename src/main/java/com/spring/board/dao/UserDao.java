package com.spring.board.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.dto.UserDto;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSeesion;
	
	final static String NAMESPACE_USER = "com.spring.board.userMapper";
	
	//로그인을 위한 메서드
	public UserDto login(HashMap<String, Object> userMap) throws Exception{
		return sqlSeesion.selectOne(NAMESPACE_USER + ".login", userMap);
	}
	
	//로그인시 로그인 시간 업데이트
	
	// 아이디 중복 확인 매서드
	public int idCheck(String checkId) throws Exception{
		
		return sqlSeesion.selectOne(NAMESPACE_USER + ".idCheck", checkId);
	}
	
	//회원 가입을 위한 메서드
	public void signUp(HashMap<String, Object> signUpFormMap) throws Exception{
		sqlSeesion.insert(NAMESPACE_USER + ".signUp", signUpFormMap);
	}
	// 회원 메일에서 아이디 활성화 요청을 위한 메서드
	
	// 로그인시 최근 로그인 시간 업데이트
	
	// 추천 후, 추천 활성화 시간 업데이트
	
	// 추천 활성화 시간 조회
}
