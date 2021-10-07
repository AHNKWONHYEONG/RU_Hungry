package com.ruh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ruh.daos.ReviewDao;
import com.ruh.dtos.ReviewDto;

@WebServlet("/ReviewController.do")
public class ReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String command=request.getParameter("command");
		ReviewDao dao=new ReviewDao();
		
		if(command.equals("detail")) {
			String seq = request.getParameter("seq");
			int sseq = Integer.parseInt(seq);
			ReviewDto dto=dao.searchBoard(sseq);
			
			request.setAttribute("dto", dto);
			RequestDispatcher dispatch=request.getRequestDispatcher("reviewdetail.jsp");
			dispatch.forward(request, response);
		}
		
		else if(command.equals("insert")) {
			RequestDispatcher dispatch=request.getRequestDispatcher("addreview.jsp");
			dispatch.forward(request, response);
		}
		
		else if(command.equals("addreview")) {
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String category = request.getParameter("category");
			
			boolean isS=dao.insertBoard(new ReviewDto(category,title,id,content));
			
			if(isS) {
				response.sendRedirect("UsersController.do?command=choice");
			}else {
				request.setAttribute("msg", "글추가실패");
//				pageContext.forward("error.jsp");
//				request.getRequestDispatcher("error.jsp").forward(request, response);
				RequestDispatcher dispatch=request.getRequestDispatcher("error.jsp");
				dispatch.forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
