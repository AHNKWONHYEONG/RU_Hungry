package com.ruh.daos;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ruh.config.SqlMapConfig;
import com.ruh.dtos.ReviewDto;

//import com.hk.dtos.HkDto;

public class ReviewDao extends SqlMapConfig {

	private String namespace="com.ruh.review.";
	
	//1. 글목록 조회: select문 - 결과는 여러행 반환 -> list를 반환
		public List<ReviewDto> getBoardList(){
			List<ReviewDto> list=new ArrayList<ReviewDto>();
			SqlSession sqlSession=null;
			try {
				//SqlSessionFactory객체 구함
				SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
				
				//SqlSessionFactory객체로 부터 SqlSession객체를 구해온다.
				//이때 openSession(true)로 실행하면 autocommit->true로 설정
				sqlSession=sqlSessionFactory.openSession(true);
				//selectList(쿼리id)실행하면 결과를 List로 반환해 준다.
				list=sqlSession.selectList(namespace+"reviewboard");
				
//				sqlSession=getSqlSessionFactory().openSession(true);
//				count=sqlSession.insert(nameSpace+"insertboard", dto);
			} catch (Exception e) {
				System.out.println("JDBC실패:reviewboard:"+getClass());
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
					
			return list;
		}
		
		public List<ReviewDto> filterlist(String[] categorys){
			List<ReviewDto> list=null;
			SqlSession sqlSession=null;
			try {
				SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
				
				sqlSession=sqlSessionFactory.openSession(true);
				Map<String, Object> map=new HashMap<>();
				map.put("categorys", categorys);
				list=sqlSession.selectList(namespace+"filter", map);
				
			} catch (Exception e) {
				System.out.println("JDBC실패:filterlist:"+getClass());
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
					
			return list;
		}
		
		//글목록의 페이지수 구하기
//		public int getPCount(){
//			int pcount=0;
//			SqlSession sqlSession=null;
//			try {
//				//SqlSessionFactory객체 구함
//				SqlSessionFactory sqlSessionFactory=getSqlSessionFactory();
//				
//				//SqlSessionFactory객체로 부터 SqlSession객체를 구해온다.
//				//이때 openSession(true)로 실행하면 autocommit->true로 설정
//				sqlSession=sqlSessionFactory.openSession(true);
//				//selectList(쿼리id)실행하면 결과를 List로 반환해 준다.
//				pcount=sqlSession.selectOne(namespace+"pcount");
//				
////				sqlSession=getSqlSessionFactory().openSession(true);
////				count=sqlSession.insert(nameSpace+"insertboard", dto);
//			} catch (Exception e) {
//				System.out.println("JDBC실패:getPCount():"+getClass());
//				e.printStackTrace();
//			}finally {
//				sqlSession.close();
//			}			
//			return pcount;
//		}
		
		
		//2. 글추가: 페이지에서 입력된 값을 받아서 DB에 추가한다.
		//			insert문 실행: 반환값???결과값 없다. ->대신 추가된 행의 개수를 반환한다.
		//			파라미터 정의: id, title, content
		public boolean insertBoard(ReviewDto dto) {//hkDto-> id title content 담을 수 있다.
			int count=0;//insert문에 추가되는 행의 개수를 저장할 변수
			SqlSession sqlSession=null;
					
			try {
				sqlSession=getSqlSessionFactory().openSession(true);
				count=sqlSession.insert(namespace+"review", dto);
			} catch (Exception e) {
				System.out.println("JDBC실패:review:"+getClass());
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return count>0?true:false;//삼항연산자 활용
		}
		//3. 글상세조회 select, 파라미터 받기 -> dbeaver에서 쿼리 작성하면 알 수 있다.
		//	반환타입: 글하나의 대한 정보 조회-> 1row를 반환 -> 1row를 저장하는 객체 Dto
		public ReviewDto searchBoard(int seq){
			ReviewDto dto=new ReviewDto();
			SqlSession sqlSession=null;
			
			try {
				sqlSession=getSqlSessionFactory().openSession(true);
				dto=sqlSession.selectOne(namespace+"getboard",seq);
			} catch (Exception e) {
				System.out.println("JDBC실패:searchBoard():"+getClass());
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return dto;
		}
		//4. 글수정 update 파라미터 받기
		//수정할 컬럼: 제목, 내용, 작성일
		//파라미터받을 목록 seq, 제목, 내용
		public boolean updateBoard(ReviewDto dto){
			int count=0;
			SqlSession sqlSession=null;
			try {
				sqlSession=getSqlSessionFactory().openSession(true);
				count=sqlSession.update(namespace+"updateboard", dto);
			} 	catch (Exception e) {
				System.out.println("JDBC실패:upBoard():"+getClass());
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return count>0?true:false;
		}
		
		//5. 글삭제 delete 파라미터
//		public boolean delBoard(int seq){
//			int count=0;
//			SqlSession sqlSession=null;
//			
//			try {
//				sqlSession=getSqlSessionFactory().openSession(true);
//				count=sqlSession.delete(namespace+"delboard", seq);
//			} catch (Exception e) {
//				System.out.println("JDBC실패:delBoard():"+getClass());
//				e.printStackTrace();
//			}finally{
//				sqlSession.close();
//			}
//			
//			return count>0?true:false;
//		}
		
		//글 여러개 삭제하기:delete문, 파라미터 받기 seq여러개 ->배열
		//트랜젝션처리: 모두 성공하면 성공 하나라도 실패하면 실패로 처리한다.
		//		setAutocommit(), commit(), rollback()활용 
		//트랜젝션 처리 유형: 
		//			1. 요청한번에 update문, insert문 실행->작업의 수가 정해진 경우
		//			2. 요청한번에 delete문 실행 -> 몇번 작업할지 정해지지 않은 경우
		//				->파라미터 값을 확인해서 몇번 delete문을 실행할지 결정
		//		->batch개념: 동일한 여러 작업을 한번에 실행하는 개념
		//					a+b, a-b(X) / a+b, a+b, a+b(O)
		// delete from hkboard where seq=1
		// delete from hkboard where seq=5
		// delete from hkboard where seq=6

		public boolean mulDel(String id,String[] seqs) {
			int count=0;
			SqlSession sqlSession=null;
			
			try {
				//openSession(false): autocommit을 false설정 ->rollback가능
				sqlSession=getSqlSessionFactory().openSession(false);
				
				//한 파라미터에 2개 넣을때 map을 사용해서 param에 2개 넣어놓고 사용함
				Map<String, Object> param = new HashMap<>(); 
				
				for (int i = 0; i < seqs.length; i++) {
					String seq=seqs[i];
					param.put("id", id); 
					param.put("seq",seqs[i]);
					count=sqlSession.delete(namespace+"delboard", param);				
				}
				
				sqlSession.commit();//commit실행: db에 반영
			} catch (Exception e) {
				sqlSession.rollback();
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return count>0?true:false;
		}
}
