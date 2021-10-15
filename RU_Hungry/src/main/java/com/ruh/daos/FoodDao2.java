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
	
	public boolean insertFood1(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"1",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood2(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"2",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood3(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"3",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood4(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"4",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood5(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"5",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood6(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"6",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood7(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"7",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood8(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"8",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood9(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"9",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood10(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"10",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood11(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"11",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood12(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"12",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood13(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"13",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood14(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"14",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	public boolean insertFood15(FoodDto dto) {
		int count=0;
		SqlSession sqlsession=null;
		
		try {
			sqlsession=getSqlSessionFactory().openSession(true);
			count=sqlsession.insert(namespace+"15",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		
		return count>0?true:false;
	}
	
	
}
