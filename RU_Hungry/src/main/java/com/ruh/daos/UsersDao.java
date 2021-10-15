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
		public int idChk(String id) {
			SqlSession sqlSession = null;
			UsersDto dto = null;
			int result = 0;
			StringBuffer sb=new StringBuffer();
			sb.append(" SELECT COUNT(*)");
			sb.append(" FROM USERS WHERE ID=? ");
			
			try {
				Map<String, String> map = new HashMap<>();
				map.put("id", id);
				sqlSession = getSqlSessionFactory().openSession(true);
				result=sqlSession.selectOne(namespace+"idChk",map);
			} catch (Exception e) {
				System.out.println("JDBC실패:idChk():"+getClass());
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return result;
		}

	
}
