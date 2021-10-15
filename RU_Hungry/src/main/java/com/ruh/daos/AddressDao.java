package com.ruh.daos;

import java.io.PrintWriter;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ruh.config.SqlMapConfig;
import com.ruh.dtos.AddressDto;
import com.ruh.dtos.UsersDto;


public class AddressDao extends SqlMapConfig{
	private String namespace="com.ruh.login.";// DataMapper와 연결
	
	public boolean locationupdate(String id,String si,String gu) {
		AddressDto dto=null;
		SqlSession sqlSession=null;
		int count=0;
		
		try {
			sqlSession=getSqlSessionFactory().openSession(true);
			Map<String, Object> param = new HashMap<>(); 
					
			param.put("id", id); 
			param.put("si",si);
			param.put("gu",gu);			//		10-14일 쿼리아이디 정해서 맵퍼에서 업데이트문 쓰고 컨틀롤러
			count=sqlSession.update(namespace+"updatelocation", param);	
	
		} catch (Exception e) {
			// TODO Auto-generated catch block	
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return count>0?true:false;
	}

	public AddressDto viewlocation(String id) {
			AddressDto dto=null;
			SqlSession sqlSession=null;
					
				sqlSession=getSqlSessionFactory().openSession(true);
				dto=sqlSession.selectOne(namespace+"selectlocation",id);
		return dto;
	}
	
}
