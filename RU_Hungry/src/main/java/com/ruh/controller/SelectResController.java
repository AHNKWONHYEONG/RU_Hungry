package com.ruh.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ruh.daos.FoodDao;
import com.ruh.daos.ReviewDao;
import com.ruh.dtos.ResListDto;

import net.sf.json.JSONObject;


@WebServlet("/SelectResController.do")
public class SelectResController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		response.setContentType("text/html; charset=UTF-8");  //서버측 인코딩
		ResListDto dto=new ResListDto();
		ReviewDao dao = new ReviewDao();
		String command = request.getParameter("command");
		if(command.equals("selectres")) {
			String title = request.getParameter("title");
			List<ResListDto> restlist=dao.reslist(title);
			System.out.println(restlist.get(0));
			Map<String, List<ResListDto>> map=new HashMap<>(); //자바 map = js json
			map.put("restlist", restlist);
			
			System.out.println(map.get("restlist"));
			
			JSONObject jo=JSONObject.fromObject(map);	//map -> json 변환
		PrintWriter pwr=response.getWriter();
		jo.write(pwr);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
