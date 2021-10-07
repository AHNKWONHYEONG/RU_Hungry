package com.ruh.daos;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ruh.config.SqlMapConfig;
import com.ruh.dtos.FoodDto;
import com.ruh.dtos.UsersDto;

public class FoodDao extends SqlMapConfig{
	private String namespace="com.ruh.login.";// DataMapper와 연결
	
	public FoodDto selectFood(String id) {
		FoodDto dto=null;
		SqlSession sqlSession=null;
		
		try {
			Map<String, String>map=new HashMap<>();
			map.put("id", id);
			sqlSession=getSqlSessionFactory().openSession(true);
			dto=sqlSession.selectOne(namespace+"selectone", map); //쿼리 id 는 selectone
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return dto;
	}
	
	
}
