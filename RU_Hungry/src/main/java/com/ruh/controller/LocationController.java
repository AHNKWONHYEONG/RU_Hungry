package com.ruh.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.print.DocFlavor.STRING;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ruh.daos.AddressDao;
import com.ruh.daos.FoodDao;
import com.ruh.dtos.FoodDto;
import com.ruh.dtos.UsersDto;

/**
 * Servlet implementation class LocationController
 */
@WebServlet("/LocationController.do")
public class LocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LocationController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		response.setContentType("text/html; charset=UTF-8");  //서버측 인코딩
		
		String command=request.getParameter("command");
		
		AddressDao dao=new AddressDao();
		HttpSession session=request.getSession();//session객체 구함

		if(command.equals("updatelocation")) {  
					session.removeAttribute("readcount");// 세션
					
					UsersDto sess= (UsersDto)session.getAttribute("ruhDto");
					String id= sess.getId();
					String si= request.getParameter("si");
					String gu=request.getParameter("gu") ;
					
					Boolean isS=dao.locationupdate(id,si,gu);	//14일	
			


					
					if (isS) {
						String jsTag="<script type='text/javascript'>"
									+	"alert('위치설정을 완료하였습니다');"
									+	"location.href='location.jsp';"	
									+"</script>";
						PrintWriter pwr=response.getWriter();
						pwr.print(jsTag);
						
					}else {
						String jsTag="<script type='text/javascript'>"
									+	"alert('유효하지 않은 처리입니다');"
									+"</script>";
						PrintWriter pwr=response.getWriter();
						pwr.print(jsTag);
					}

		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
