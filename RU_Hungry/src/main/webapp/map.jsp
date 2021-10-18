<%@page import="com.ruh.dtos.AddressDto"%>
<%@page import="com.ruh.daos.AddressDao"%>
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
<%
	UsersDto udto = (UsersDto)session.getAttribute("ruhDto");

	if(udto==null){
		pageContext.forward("index.jsp");
	}
	
	AddressDao dao=new AddressDao();
	String id=udto.getId();
	AddressDto adto=dao.viewlocation(id);
	
	String gu=adto.getGu();
	float jlat=0;
	float jing=0;
	
	if(gu.equals("영등포구")){//37.52232661754723, 126.90954913816017
		jlat=37.52232661754723F;
		jing=126.90954913816017F;
	}else if(gu.equals("양천구")){	//37.524777230367214, 126.85478916209071
		jlat=37.524777230367214F;
		jing=126.85478916209071F;
	}else if(gu.equals("동작구")){	//37.49881310611938, 126.95175927277141
		jlat=37.49881310611938F;
		jing=126.95175927277141F;
	}
	
%>
<script type="text/javascript">
var map;		//페이지 로드시 map 객체	사용자 주소
var map1;	//식당 주소 객체

var selectedGu = new Array();

function initMap() {    //페이지 로드시
	var myLoca = { lat: <%=(float)jlat %> ,lng: <%=(float)jing %>};
	
    map = new google.maps.Map(
      document.getElementById('map'), {
        zoom: 15,
        center: myLoca
      });
  }
function initMaps(x,y) {		//0번째 식당위치를 센터로 잡는다
	var firstRest = { lat: x ,lng: y };
    map1 = new google.maps.Map(
      document.getElementById('map'), {
        zoom: 15,
        center: firstRest
      });
  }
  
var foodname;
var sameFood;		//중복체크 
var markers=[];

function selectFood() {
	$.ajax({
		url: "MapController.do",
		data: {"command": "selectfood"},
		method:"POST",
		dataType: "Text",
		success: function(val) { //val은 db에서 select한 foodname
			var doc=document.getElementById("rcmimg");
//		 	String foodname=val.toString();
		doc.src="img/"+val+".JPG";
		foodname=val;
		initMap();
		
		}
	})
}


function chooseRest() {
// 	&& foodname != sameFood
	if(foodname!=null ){
		deleteMarkers();
//		clearElements();
		if(selectedGu.length==0)	{	//구 설정을 안할시 설정된 위치(구) 로
			var myGU="";
			myGU="<%= adto.getGu()%>";
			selectedGu.push(myGU);
			console.log(selectedGu);
		}
		
		$.ajax({
			url: "MapController.do",
			traditional:true,
			data: {"command": "chooserest", "foodname":foodname , "gu":selectedGu },		// 같은이름으로 키값 보내서 get para values   맵퍼에서 foreach
			method:"POST",
			dataType: "JSON",
			success: function(map) { //val은 db에서 select한 json
//				var doc=document.getElementById("reslist");
				var doc=document.querySelectorAll("#reslist tbody")[0];
				doc.innerHTML="";
				var firstLat;
				var firstIng;
				
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
				
					if(i==0){		//첫번째 결과의 위도경도를 저장
						firstLat=parseFloat(lat);
						firstIng=parseFloat(ing);
					}
					
					
					doc.innerHTML += "<tr><th>"+i +"</th><th>"+name +"</th><th>"+foodname +"</th><th>"+open+"~"+close +"</th><th>"+address +"</th><th><a href='index.jsp'>더보기</a></th></tr>"
					
					
					makemark(i,lat,ing);	//마커스 배열에 저장 푸쉬
				}
				initMaps(firstLat,firstIng);
				setMarkOnMap(map1);	//마커 배열을 지도에 표시
			}
		})
	
	}
	else if(sameFood==foodname){
		alert("방금전 같은 음식을 선택하셨잖아요ㅡㅡ");
	}
	sameFood=foodname;
	foodname=null;
}

function makemark(i,x,y) {
	 var markposi={ lat: x ,lng: y };
	 
	 var marker=new google.maps.Marker({
	     position: markposi,
	     map: map1,
	     label: i.toString()
	   });
	 markers.push(marker);	
}

function setMarkOnMap(map1) {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(map1);
	}
}

function clearMarkers(){  //마커를 지운다 하지만 마커 배열에 는 유지된다
	 setMarkOnMap(null);
}

function deleteMarkers() { // 마커를 지우고 배열도 비운다
	clearMarkers();
	markers=[];
}

$(document).ready(function initmap() {			//페이지를 다 띄우면 온로드
	 var myposi = { lat: <%=(float)jlat %> ,lng: <%=(float)jing %> };		//사용자의 위도 경도 
	 map = new google.maps.Map( document.getElementById('map'), {
	     zoom: 15,
	     center: myposi
	   });
	});

	function mulgu() {
		var doc=document.getElementById("selgu");
		if(doc.value!="X" && selectedGu.length<3){
			selectedGu.push(doc.value);
			var doc1=document.getElementById("viewgu");
			doc1.innerHTML+=" ▶ "+doc.value;
		}
		console.log(selectedGu);
		console.log(selectedGu.length);
	}
	
	function resetGu() {
		selectedGu=[];
		var doc1=document.getElementById("viewgu");
		doc1.innerHTML="";
		var doc=document.getElementById("selgu");
		doc.options[0].selected=true;
	}
	
</script>
</head>

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
	<div style="height: 20px;"></div>
	<div> 현재 나의 위치 <%=adto.getSi() %> - <%=adto.getGu() %></div>
	<div>
		<select id="selgu"  onchange="mulgu()">
			<option value="X" id="X">구를 선택하세요(최대 3개)</option>
			<option value="강남구"  >강남구</option>
			<option value="강동구"  >강북구</option>
			<option value="강동구" >강동구</option>
			<option value="강서구" >강서구</option>
			<option value="관악구" >관악구</option>
			<option value="광진구" >광진구</option>
			<option value="구로구" >구로구</option>
			<option value="금천구" >금천구</option>
			
			<option value="노원구" >노원구</option>
			
			<option value="도봉구" >도봉구</option>
			<option value="동대문구" >동대문구</option>
			<option value="동작구" >동작구</option>
			
			<option value="마포구" >마포구</option>
			
			<option value="서대문구" >서대문구</option>
			<option value="서초구" >서초구</option>
			<option value="성동구" >성동구</option>
			<option value="성북구" >성북구</option>
			<option value="송파구" >송파구</option>

			<option value="양천구" >양천구</option>
			<option value="영등포구" >영등포구</option>
			<option value="용산구" >용산구</option>
			<option value="은평구" >은평구</option>

			<option value="종로구" >종로구</option>
			<option value="중구" >중구</option>
			<option value="중량구" >중량구</option>
		</select>
		<button type="button" onclick="resetGu()">되돌리기</button> <b>선택 구:</b> <b id="viewgu"></b>
 </div>
	<div  style="width: 1000px; height: 400px; border: 1px solid red;">
			<table id="reslist"  border="1">
				<col width="50px">
				<col width="140px">
				<col width="100px">
				<col width="340px">
				<col width="200px">
				<col width="140px">
				<thead>
				<tr id="trlist">
					<th>번호</th>
					<th>식당이름</th>
					<th>음식</th>
					<th>영업시간</th>
					<th>주소</th>
					<th>상세보기</th>
				</tr>
				</thead>
				<tbody></tbody>
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
</body>
</html>