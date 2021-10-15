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
				boolean isS=dao.insertFood0(new FoodDto(id));
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
				boolean isS=dao.insertFood1(new FoodDto(id));
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
				boolean isS=dao.insertFood2(new FoodDto(id));
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
				boolean isS=dao.insertFood3(new FoodDto(id));
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
				boolean isS=dao.insertFood4(new FoodDto(id));
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
				boolean isS=dao.insertFood5(new FoodDto(id));
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
				boolean isS=dao.insertFood6(new FoodDto(id));
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
				boolean isS=dao.insertFood7(new FoodDto(id));
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
				boolean isS=dao.insertFood8(new FoodDto(id));
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
				boolean isS=dao.insertFood9(new FoodDto(id));
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
				boolean isS=dao.insertFood10(new FoodDto(id));
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
				boolean isS=dao.insertFood11(new FoodDto(id));
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
				boolean isS=dao.insertFood12(new FoodDto(id));
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
				boolean isS=dao.insertFood13(new FoodDto(id));
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
				boolean isS=dao.insertFood14(new FoodDto(id));
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
				boolean isS=dao.insertFood15(new FoodDto(id));
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
