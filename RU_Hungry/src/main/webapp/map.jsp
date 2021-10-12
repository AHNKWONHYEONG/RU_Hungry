<%@page import="java.util.List"%>
<%@page import="com.ruh.dtos.ResListDto"%>
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
			<img  id="rcmimg" alt="추천이미지" src=" img/추천해주세요.png" style="width: 300px; height: 260px;">
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
	<div  style="width: 1000px; height: 400px; border: 1px solid red;">
			<table id="reslist"  border="1">
				<col width="50px">
				<col width="140px">
				<col width="100px">
				<col width="340px">
				<col width="200px">
				<col width="140px">
				<tr>
					<th>번호</th>
					<th>식당이름</th>
					<th>음식</th>
					<th>영업시간</th>
					<th>주소</th>
					<th>상세보기</th>
				</tr>
			</table>
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
 
 var map;
function chooseRest() {
	if(foodname!=null){
		$.ajax({
			url: "MapController.do",
			data: {"command": "chooserest", "foodname":foodname},
			method:"POST",
			dataType: "JSON",
			success: function(map) { //val은 db에서 select한 json
				var doc=document.getElementById("reslist");
		
				for (var i = 0; i < map["restlist"].length; i++) {
					var name=map["restlist"][i]["name"];
					var foodname=map["restlist"][i]["foodname"];
					var address=map["restlist"][i]["address"];
					var phone=map["restlist"][i]["phone"];
					var breakstart=map["restlist"][i]["breakstart"];
					var breakend=map["restlist"][i]["breakend"];
					var open=map["restlist"][i]["open"];
					var close=map["restlist"][i]["close"];
					var parking=map["restlist"][i]["parking"];
					var si=map["restlist"][i]["si"];
					var gu=map["restlist"][i]["gu"];
					var lat=map["restlist"][i]["lat"];
					var ing=map["restlist"][i]["ing"];
				
					doc.innerHTML += "<tr><th>"+i +"</th><th>"+name +"</th><th>"+foodname +"</th><th>"+open+"~"+close +"</th><th>"+address +"</th><th><a href='index.jsp'>더보기</a></th></tr>"
					makemark(i,lat,ing);
				}
			}
		})
	}
	foodname=null;
}

$(document).ready(function initmap() {
	 //37.525617, 126.886316 양평
	 var myposi = { lat: 37.525617 ,lng: 126.886316 };
	 map = new google.maps.Map( document.getElementById('map'), {
	     zoom: 15,
	     center: myposi
	   });
	});

 function makemark(i,x,y) {
	 var markposi={ lat: x ,lng: y };
	 console.log(x);
	 console.log(y);
	 
	 new google.maps.Marker({
	     position: markposi,
	     map: map,
	     label: i.toString()
	   });
}
</script>
</body>
</html>