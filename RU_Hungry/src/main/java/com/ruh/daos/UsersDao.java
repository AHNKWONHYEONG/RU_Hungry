package com.ruh.daos;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

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
	
	//아이디 중복체크: 가입할 아이디가 기존 DB에 존재하는 여부 체크-select문실행, 파리미터 : 가입할 ID
		public String idChk(String id) {
			SqlSession sqlSession = null;
			String idchk=null;
			
			try {
				sqlSession=getSqlSessionFactory().openSession(true);
				idchk=sqlSession.selectOne(namespace+"idchk", id);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return idchk;
		}

	
}
