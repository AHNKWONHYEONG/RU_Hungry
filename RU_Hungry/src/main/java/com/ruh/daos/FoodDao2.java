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
	
	public boolean insertFood0(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"0",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	
}
