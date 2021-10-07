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
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCePJSFCOeZEfNI7b31h51yWJw4HXTgDT8&callback=initMap&region=kr"></script>
  <script>
    function initMap() {
      var seoul = { lat: 37.5642135 ,lng: 127.0016985 };
      var map = new google.maps.Map(
        document.getElementById('map'), {
          zoom: 12,
          center: seoul
        });
      
    }
  </script>
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
			<button onclick="chooseRest()">음식이 맘에들어~</button>
		</div>
		<div style="height: 20px;"></div>
		<div style=" width: 300px; height: 140px; border: 1px solid red;">
			<a href="main.jsp" >뒤로가기</a>
		</div>
	</td>

<td style="position:absolute ; left: 330px ;   width: 1100px; height: 810px;">
		<div style=" width: 1000px; height: 400px; border: 1px solid red;" id="map" ></div>
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
 var foodname;
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
		foodname=val;
		}
	})
}
 
 //37.525606,126.8840023 양평역5호선
 var map;
function chooseRest() {
	location.href="MapController.do?command=chooserest&foodname="+foodname; //커맨드랑 음식이름을 보내줌
	
	//ㅂ다기
}
 function initMap() {
   var rest1 = { lat: 37.525606 ,lng: 126.8840023 };
   map = new google.maps.Map( document.getElementById('map'), {
       zoom: 12,
       center: rest1
     });

   new google.maps.Marker({
     position: rest1,
     map: map,
     label: "식당 좌표"
   });
 }
</script>

</body>
</html>