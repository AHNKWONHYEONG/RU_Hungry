package com.ruh.daos;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ruh.config.SqlMapConfig;
import com.ruh.dtos.FoodDto;
import com.ruh.dtos.ResListDto;
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


	public List<ResListDto> selectRest(String foodname, String[] gu) {
		List<ResListDto> dto=null;
		SqlSession sqlSession=null;
		
		Map<String, Object>map=new HashMap<>();	//map 에 배열 넣기
		map.put("foodname", foodname);
		map.put("gu", gu);
		sqlSession=getSqlSessionFactory().openSession(true);
		
		dto=sqlSession.selectList(namespace+"selectrest", map); //쿼리 id 는 selectrest
		
	return dto;
	}
	

	public int insertChosen(FoodDto returnfood) {
		SqlSession sqlSession=null;
		int count=0;
		try {
			sqlSession=getSqlSessionFactory().openSession(true);
			count=sqlSession.insert(namespace+"insertchosen", returnfood); //쿼리 id 는 selectone
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return count;
	}


	public FoodDto returnfood(String id, String foodname) {
		FoodDto dto=null;
		SqlSession sqlSession=null;
		
		try {
			Map<String, String>map=new HashMap<>();
			map.put("id", id);
			map.put("foodname", foodname);
			sqlSession=getSqlSessionFactory().openSession(true);
			dto=sqlSession.selectOne(namespace+"returnfood", map); //쿼리 id 는 selectone
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return dto;
	}
}
