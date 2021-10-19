package com.ruh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ruh.daos.FoodDao2;
import com.ruh.daos.ReviewDao;
import com.ruh.dtos.FoodDto;

@WebServlet("/FoodController.do")
public class FoodController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		String command=request.getParameter("command");
		
		FoodDao2 dao=new FoodDao2();
		
		if(command.equals("submit")) {
			String id = request.getParameter("id");
			String img=request.getParameter("img");
			
			
			if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/0.jpg")) {
				boolean isS=dao.insertFood(id, "LA갈비", 0, 1, 0, 1, 1, 0, "한식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/1.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'치킨',0,1,0,1,1,0,'패스트푸드')
				boolean isS=dao.insertFood(id, "치킨", 0, 1, 0, 1, 1, 0, "패스트푸드");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/2.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'갈비찜',0,1,0,1,1,0,'한식')

				boolean isS=dao.insertFood(id, "갈비찜", 0, 1, 0, 1, 1, 0, "한식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/3.jpg")) {

//				VALUES(RUH_SEQ.nextval,#{id},'삼겹살',0,0,0,0,1,0,'한식')
			
				boolean isS=dao.insertFood(id, "삼겹살", 0, 0, 0, 0, 1, 0, "한식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/4.jpg")) {

//					VALUES(RUH_SEQ.nextval,#{id},'김치찌개',1,0,0,0,1,0,'한식')
				
				boolean isS=dao.insertFood(id, "김치찌개", 1, 0, 0, 0, 1, 0, "한식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/5.jpg")) {

//					VALUES(RUH_SEQ.nextval,#{id},'나베',0,1,0,1,1,0,'일식')
				
				boolean isS=dao.insertFood(id, "나베", 0, 1, 0, 1, 1, 0, "일식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/6.jpg")) {

//					VALUES(RUH_SEQ.nextval,#{id},'돈까스',0,0,0,0,1,0,'일식')

					
				boolean isS=dao.insertFood(id, "돈까스", 0, 0, 0, 0, 1, 0, "일식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/7.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'짜장면',0,1,0,0,1,0,'중식')
				boolean isS=dao.insertFood(id, "짜장면", 0, 1, 0, 0, 1, 0, "중식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/8.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'칼국수',1,0,0,0,1,0,'한식')

				
				boolean isS=dao.insertFood(id, "칼국수", 1, 0, 0, 0, 1, 0, "한식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/9.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'피자',0,1,0,1,1,0,'패스트푸드')

				
				boolean isS=dao.insertFood(id, "피자", 0, 1, 0, 1, 1, 0, "패스트푸드");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/10.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'파스타',0,1,0,1,1,0,'양식')

				
				boolean isS=dao.insertFood(id, "파스타", 0, 1, 0, 1, 1, 0, "양식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/11.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'쭈꾸미',1,1,0,0,1,0,'야식')

				
				boolean isS=dao.insertFood(id, "쭈꾸미", 1, 1, 0, 0, 1, 0, "야식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/12.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'초밥',0,0,1,1,0,1,'일식')

				
				boolean isS=dao.insertFood(id, "초밥", 0, 0, 1, 1, 0, 1, "일식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/13.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'햄버거',0,1,0,0,1,0,'패스트푸드')

				
				boolean isS=dao.insertFood(id, "햄버거", 0, 1, 0, 0, 1, 0, "패스트푸드");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/14.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'족발',0,0,0,1,1,0,'야식')

				
				boolean isS=dao.insertFood(id, "족발", 0, 0, 0, 1, 1, 0, "야식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}
			
			else if(img.equals("http://localhost:8090/RU_Hungry/img/wimg/15.jpg")) {
//				VALUES(RUH_SEQ.nextval,#{id},'스테이크',0,1,0,0,1,0,'양식')
				boolean isS=dao.insertFood(id, "스테이크", 0, 1, 0, 0, 1, 0, "양식");
				if(isS) {
					response.sendRedirect("UsersController.do?command=worldcup");
				}else {
					request.setAttribute("msg", "글추가실패");
//					pageContext.forward("error.jsp");
//					request.getRequestDispatcher("error.jsp").forward(request, response);
					RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
					dispatch.forward(request, response);
				}
				
			}

		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
