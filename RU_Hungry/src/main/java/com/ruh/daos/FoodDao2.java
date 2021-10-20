package com.ruh.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ruh.config.SqlMapConfig;
import com.ruh.dtos.FoodDto;
import com.ruh.dtos.ResListDto;
import com.ruh.dtos.UsersDto;

public class FoodDao2 extends SqlMapConfig{
	private String namespace="com.ruh.food.";// DataMapper와 연결

	public boolean insertFood(String id,String foodname,int spicy,int salty,int sour,
								int sweet,int hot,int cold,String category) {
		int dto=0;
		SqlSession sqlSession=null;
		try {
			Map<String, Object> map=new HashMap<>();
			map.put("id", id);
			map.put("foodname", foodname);
			map.put("spicy", spicy);
			map.put("salty", salty);
			map.put("sour", sour);
			map.put("sweet", sweet);
			map.put("hot", hot);
			map.put("cold", cold);
			map.put("category", category);
			sqlSession=getSqlSessionFactory().openSession(true);
			dto=sqlSession.insert(namespace+"s", map); //쿼리 id 는 selectone
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return dto>0?true:false;
	}
	
	public int insertChosen(FoodDto returnfood) {
		SqlSession sqlSession=null;
		int count=0;
		try {
			sqlSession=getSqlSessionFactory().openSession(true);
			count=sqlSession.insert(namespace+"s", returnfood); //쿼리 id 는 selectone
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
