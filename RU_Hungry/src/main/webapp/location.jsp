<%@page import="com.ruh.daos.AddressDao"%>
<%@page import="com.ruh.dtos.AddressDto"%>
<%@page import="com.ruh.dtos.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	UsersDto udto = (UsersDto)session.getAttribute("ruhDto");

	if(udto==null){
		pageContext.forward("index.jsp");
	}
	AddressDao dao=new AddressDao();
	String id=udto.getId();
	AddressDto adto=dao.viewlocation(id);
%>
<body>
<div style="height: 100px;">
	<h3><%=udto.getId() %>님의 현재 설정된 위치</h3>
	<h5>시: <%=adto.getSi() %> 구:<%=adto.getGu() %></h5>
</div>

<div>
			위치 설정하기
</div>
<div>
	<select name="setsi" id="setsi" style="width: 100px;">
		<option value="X" >시</option>
		<option value="서울특별시">서울특별시</option>
	</select>
	<select name="setgu" id="setgu">
		<option value="X">구</option>
		<option value="영등포구">영등포구</option>
		<option value="양천구">양천구</option>
		<option value="동작구">동작구</option>
	</select>
</div>
<div>
<button type="button" onclick="setLocation()">위치 저장하기</button>
</div>
<script type="text/javascript">
function setLocation() {
	var si=document.getElementById("setsi").options[document.getElementById("setsi").selectedIndex].value;
	var gu=document.getElementById("setgu").options[document.getElementById("setgu").selectedIndex].value;
	
	if(si != "X"&& gu!="X"){
		location.href="LocationController.do?command=updatelocation&si="+si+"&gu="+gu;
		
	}else{
		alert("시와 구를 올바르게 설정하세요~");
	}
	
}
</script>
</body>
</html>