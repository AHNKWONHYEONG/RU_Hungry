package com.ruh.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ruh.daos.FoodDao;
import com.ruh.dtos.FoodDto;
import com.ruh.dtos.UsersDto;


@WebServlet("/RouletteController.do")
public class RouletteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RouletteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		response.setContentType("text/html; charset=UTF-8");  //서버측 인코딩
		
		String command=request.getParameter("command");
		
		FoodDao dao=new FoodDao();
		HttpSession session=request.getSession();//session객체 구함
		if(command.equals("insertchosen")) {  
			session.removeAttribute("readcount");
			String foodname=request.getParameter("foodname");
			UsersDto sess= (UsersDto)session.getAttribute("ruhDto");
			String id= sess.getId();
			FoodDto returnfood= dao.returnfood(id,foodname); //하나 select 한 dto
			int isS=dao.insertChosen(returnfood);	
			
			if(isS !=0) {
			PrintWriter pwr=response.getWriter();
			pwr.print(foodname);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
