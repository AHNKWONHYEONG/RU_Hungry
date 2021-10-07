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
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
