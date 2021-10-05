package com.ruh.daos;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ruh.config.SqlMapConfig;
import com.ruh.dtos.LoginDto;

public class LoginDao extends SqlMapConfig{
	private String namespace="com.ruh.login.";
	
	public LoginDto getLogin(String id, String pw) {
		LoginDto dto=null;
		SqlSession sqlSession=null;
		
		try {
			Map<String, String>map=new HashMap<>();
			map.put("id", id);
			map.put("pw", pw);
			sqlSession=getSqlSessionFactory().openSession(false);
			dto=sqlSession.selectOne(namespace+"getLogin", map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return dto;
	}
}
