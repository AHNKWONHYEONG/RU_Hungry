<%@page import="com.ruh.dtos.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-3.6.0.js"></script>
</head>
<%
	UsersDto udto = (UsersDto)session.getAttribute("ruhDto");

	if(udto==null){
		pageContext.forward("index.jsp");
	}
%>
<body>
<span><%=udto.getId()%></span>님 반갑습니다(아이디:<%=udto.getId()%>)
<table style="width: 2000px; height: 2000px;"> 
<tr style="width: 2000px; height: 2000px;">
	<td style="position:absolute; left:10px; width: 150px;">
		<div style="width: 140px; height: 140px; border: 1px solid red;">
			<a href="main.jsp" >이거 로고사진</a>
		</div>
		<div style=" height: 40px;"></div>
		<div style=" width: 300px; height: 300px; border: 1px solid red;">
			<div style="width: 300px; height: 260px; border: 1px solid red; ">
			<img  id="rcmimg" alt="추천이미지" src="img/간장치킨.jpg" style="width: 300px; height: 260px;">
			</div>
			<button style="position: relative;  : 1px;" onclick="selectFood()" >추천받기 (받으면 사진띄움)</button>
		</div>
	
		
		<div style=" height: 20px;"></div>
		<div style=" width: 300px; height: 140px; border: 1px solid red;">
			<a href="main.jsp" >추천다시받기</a>
		</div>
		<div style="height: 20px;"></div>
		<div style=" width: 300px; height: 140px; border: 1px solid red;">
			<a href="main.jsp" >뒤로가기</a>
		</div>
	</td>

<td style="position:absolute ; left: 330px ;   width: 1100px; height: 810px;">
	<div style=" width: 1000px; height: 400px; border: 1px solid red;">
		<a href="main.jsp" >지도사진</a>
	</div>
	<div style="height: 40px;"></div>
	<div style="width: 1000px; height: 400px; border: 1px solid red;">
		<a href="main.jsp" >식당리스트</a>
	</div>
</td >

<td style="position:absolute; left: 1410px ; width: 300px; height: 2000px;">
	<div style="height: 80px;"></div>
	<div style="width: 200px; height: 700px; border: 1px solid red;">
		<a href="main.jsp" >필터체크리스트</a>
	</div>
</td>
</tr>
</table>

<script type="text/javascript">

 function selectFood() {
	$.ajax({
		url: "MapController.do",
		data: {"command": "selectfood"},
		method:"POST",
		dataType: "Text",
		success: function(val) { //val은 db에서 select한 foodname
			var doc=document.getElementById("rcmimg");
// 		 	String foodname=val.toString();
		doc.src="img/"+val+".jpg";
		console.log(val);
		}
	})
	
}

</script>

</body>
</html>