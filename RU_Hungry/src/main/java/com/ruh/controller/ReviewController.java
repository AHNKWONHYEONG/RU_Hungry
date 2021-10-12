package com.ruh.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		if(command.equals("reviewlist")) {
			response.sendRedirect("choice.jsp");
		}
		
		
		else if(command.equals("detail")) {
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
		
		else if(command.equals("muldel")){
			String[] seqs=request.getParameterValues("chk");
			
			boolean isS=dao.mulDel(seqs);
			
			if(isS){
			String jsTag="<script type='text/javascript'>"
					+	"alert('글을 삭제합니다.');"
					+	"location.href='ReviewController.do?command=reviewlist';"
					+ "</script>";
			PrintWriter pw =response.getWriter();
			pw.print(jsTag);
					
			}else{
				request.setAttribute("msg", "글삭제 실패");
//				pageContext.forward("error.jsp");
				RequestDispatcher dispatch = request.getRequestDispatcher("error.jsp");
				dispatch.forward(request, response);
			}
		}
		
		else if(command.equals("updateform")) {
			String seq = request.getParameter("seq");
			ReviewDto dto=dao.searchBoard(Integer.parseInt(seq));
			request.setAttribute("dto", dto);
			
			RequestDispatcher dispatch=request.getRequestDispatcher("update.jsp");
			dispatch.forward(request, response);
		}
		
		else if(command.equals("updateboard")) {
			String seq = request.getParameter("seq");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			int sseq = Integer.parseInt(seq);
			boolean isS=dao.upBoard(new ReviewDto(sseq,title,content));
			
			if(isS) {
				response.sendRedirect("ReviewController.do?command=detail&seq="+seq);
			}else {
				request.setAttribute("msg", "글수정실패");
				RequestDispatcher dispatch=request.getRequestDispatcher("update.jsp");
				dispatch.forward(request, response);
			}
		}
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
