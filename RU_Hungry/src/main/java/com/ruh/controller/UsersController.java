package com.ruh.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.security.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.ruh.daos.UsersDao;
import com.ruh.dtos.UsersDto;
import com.sun.jdi.Location;


@WebServlet("/UsersController.do")
public class UsersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//원하는 쿠기 구하는 메서드
//		public Cookie getCookie(String cookieName, HttpServletRequest request) {
//			
//			Cookie[] cookies=request.getCookies();
//			Cookie cookie=null;
//			for (int i = 0; i < cookies.length; i++) {
//				if(cookies[i].getName().equals(cookieName)) {
//					cookie=cookies[i];				
//				}
//			}
//			return cookie;
//		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command=request.getParameter("command");
		
		UsersDao dao=new UsersDao();
		HttpSession session=request.getSession();//session객체 구함
		
		if(command.equals("register")) {  //예시
		
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			 String name=request.getParameter("name");
			 String nickname=request.getParameter("nickname");
			 String sex=request.getParameter("sexchk");
			 String birth=request.getParameter("birth");
			 String email=request.getParameter("email");
			 
			
			 SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");

			try {
				boolean isS= dao.Regist(new UsersDto(0, id, pw, name, nickname, null, null, sex, transFormat.parse(birth), email) );
				if (isS) {
					String jsTag="<script type='text/javascript'>"
								+	"alert('회원가입을 축하드립니다.');"
								+	"location.href = 'UsersController.do?command=index';"
								+"</script>";
					PrintWriter pwr=response.getWriter();
					pwr.print(jsTag);
				}

			} catch (ParseException e) {
				// TODO Auto-generated catch block	
				e.printStackTrace();
			}

		}
		
		else if(command.equals("index")) {
			session.removeAttribute("readcount");
			response.sendRedirect("index.jsp");
			
		}
		
		else if(command.equals("login")) {
			session.removeAttribute("readcount");
			
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			
			UsersDto dto=dao.getLogin(id, pw);
			
			if(dto.getId()!=null) {
				session.setAttribute("ruhDto", dto);
				session.setMaxInactiveInterval(10*60);
				response.sendRedirect("main.jsp");
			}else {
				String jsTag="<script type='text/javascript'>"
						+	"alert('로그인이 필요합니다..');"
						+	"location.href = 'UsersController.do?command=index';"
						+"</script>";
				PrintWriter pwr=response.getWriter();
				pwr.print(jsTag);
			}
		}
		else if(command.equals("usermain")) {
			response.sendRedirect("main.jsp");
		}
		else if(command.equals("worldcup")) {
			response.sendRedirect("worldcup.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}












