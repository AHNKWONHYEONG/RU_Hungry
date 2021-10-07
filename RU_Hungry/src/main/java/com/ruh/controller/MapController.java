package com.ruh.controller;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.ruh.daos.FoodDao;
import com.ruh.dtos.FoodDto;
import com.ruh.dtos.ResListDto;
import com.ruh.dtos.UsersDto;



/**
 * Servlet implementation class MapController
 */
@WebServlet("/MapController.do")
public class MapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MapController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		response.setContentType("text/html; charset=UTF-8");  //서버측 인코딩
		
		String command=request.getParameter("command");
		
		FoodDao dao=new FoodDao();
		HttpSession session=request.getSession();//session객체 구함
		
		if(command.equals("selectfood")) {  
			
			String foodname;
			session.removeAttribute("readcount");
			
			UsersDto sess= (UsersDto)session.getAttribute("ruhDto");
			String id= sess.getId();
			
			FoodDto dto=dao.selectFood(id);
			foodname=dto.getFoodname();
			
		
			PrintWriter pwr=response.getWriter();
			pwr.print(foodname);
		}else if(command.equals("chooserest")) {
			String foodname;
			foodname=request.getParameter("foodname");
//			System.out.println(foodname);
			List<ResListDto> dto=dao.selectRest(foodname);
		//	일단 주석
//			String name=dto.getName();
//			String address=dto.getAddress();
//			String phone=dto.getPhone();
//			String breakstart=dto.getBreakstart();
//			String breakend=dto.getBreakend();
//			String open=dto.getOpen();
//			String close=dto.getClose();
//			String parking=dto.getParking();
//			String si=dto.getSi();
//			String gu=dto.getGu();
//			int lat=dto.getLat();
//			int ing=dto.getIng();
//			
			
			//request 로 보내고  map에서 getpara로 받아쓰기       10월8일
		}
			
			 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
