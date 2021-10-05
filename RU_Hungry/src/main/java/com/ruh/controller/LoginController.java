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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.ruh.daos.LoginDao;
import com.ruh.dtos.LoginDto;
import com.sun.jdi.Location;


@WebServlet("/LoginController.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command=request.getParameter("command");
		
		LoginDao dao=new LoginDao();
		
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
				boolean isS= dao.Regist(new LoginDto(0, id, pw, name, nickname, null, null, sex, transFormat.parse(birth), email) );
				if (isS) {
					String jsTag="<script type='text/javascript'>"
								+	"alert('회원가입을 축하드립니다.');"
								+	"location.href = 'LoginController.do?command=index';"
								+"</script>";
					PrintWriter pwr=response.getWriter();
					pwr.print(jsTag);
				}

			} catch (ParseException e) {
				// TODO Auto-generated catch block	
				e.printStackTrace();
			}

		}else if(command.equals("index")) {
			response.sendRedirect("index.jsp");
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
