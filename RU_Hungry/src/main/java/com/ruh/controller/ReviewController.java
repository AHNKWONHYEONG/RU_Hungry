package com.ruh.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ruh.daos.ReviewDao;
import com.ruh.dtos.ReviewDto;
import com.ruh.dtos.UsersDto;

import net.sf.json.JSONObject;

@WebServlet("/ReviewController.do")
public class ReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		HttpSession session=request.getSession();//session객체 구함
		
		
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
			UsersDto sess= (UsersDto)session.getAttribute("ruhDto");
			
			//자기가(id) 쓴 글 만 삭제하게끔 하여 id 가져오기
			String id= sess.getId();
			
			//ReviewDao에서 가져옴, id와 seqs를 둘다 쓰려고 Map을 사용
			boolean isS=dao.mulDel(id,seqs);
			System.out.println(isS);
			
			if(isS){
			String jsTag="<script type='text/javascript'>"
					+	"alert('글을 삭제합니다.');"
					+	"location.href='ReviewController.do?command=reviewlist';"
					+ "</script>";
			PrintWriter pw =response.getWriter();
			pw.print(jsTag);					
			}
			else if(!isS){
				String jsTag="<script type='text/javascript'>"
						+	"alert('삭제 권한이 없습니다.');"
						+	"location.href='ReviewController.do?command=reviewlist';"
						+ "</script>";
				PrintWriter pw =response.getWriter();
				pw.print(jsTag);
						
				}
			else{
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
			UsersDto sess = (UsersDto)session.getAttribute("ruhDto");
			String id = sess.getId();
			int sseq = Integer.parseInt(seq);
			boolean isS=dao.updateBoard(new ReviewDto(sseq,title,content,id));
			
			if(isS) {
				response.sendRedirect("ReviewController.do?command=detail&seq="+seq);
			}else if(!isS) {
				String jsTag="<script type='text/javascript'>"
						+	"alert('수정 권한이 없습니다.');"
						+	"location.href='ReviewController.do?command=reviewlist';"
						+ "</script>";
				PrintWriter pw =response.getWriter();
				pw.print(jsTag);
			}
			else {
				request.setAttribute("msg", "글수정실패");
				RequestDispatcher dispatch=request.getRequestDispatcher("update.jsp");
				dispatch.forward(request, response);
			}
		}
		
		else if(command.equals("filter")) {
			String[] categorys=request.getParameterValues("category");
			
			List<ReviewDto> list=dao.filterlist(categorys);
			
			request.setAttribute("list", list);
			RequestDispatcher dispatch=request.getRequestDispatcher("choice2.jsp");
			dispatch.forward(request, response);
			
		}
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
