package com.ruh.daos;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ruh.config.SqlMapConfig;
import com.ruh.dtos.UsersDto;

public class UsersDao extends SqlMapConfig{
	private String namespace="com.ruh.login.";
	
	public UsersDto getLogin(String id, String pw) {
		UsersDto dto=null;
		SqlSession sqlSession=null;
		
		try {
			Map<String, String>map=new HashMap<>();
			map.put("id", id);
			map.put("pw", pw);
			sqlSession=getSqlSessionFactory().openSession(true);
			dto=sqlSession.selectOne(namespace+"getlogin", map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return dto;
	}
	
	
	public boolean Regist(UsersDto dto) {
		SqlSession sqlSession=null;
		int count=0;
		
		try {
			sqlSession=getSqlSessionFactory().openSession(true);
			count=sqlSession.insert(namespace+"register", dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return count>0? true:false;
	}
}
