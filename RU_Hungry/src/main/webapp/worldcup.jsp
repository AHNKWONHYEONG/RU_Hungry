<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>
<%@page import="com.ruh.dtos.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<title>Insert title here</title>

<link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
      <link href="assets/css/theme.css" rel="stylesheet" />
<style type="text/css">
.buttons {
	padding: 20px 150px;
	position: absolute;
	top:100px;
	left:0px;
}

.menu {
	width: 200px;
	height: 200px;
}

.home {
	width: 150px;
}

.header {
	height: 120px;
}

.bbody {
    height: 800px; 
/*    width:600px; */
   background-color: white;
/*    position: absolute; */
/*    left: 200px; */
/*    top: 300px; */
   
}
.resp{
   position:absolute;
   left:400px;
   top:150px;
/*    border: 1px solid black; */
   width: 1000px;
   height:500px;
   border-radius: 10px;
}

.info {
   position:absolute;
   left:50px;
   top:150px;
   width: 300px;
   height: 500px;
   text-align: center;
}

.infoo {
   display: inline-block;
   margin: 10px 0px;
   width: 90px;
}

.chk {
   position: absolute;
   left: 1400px;
   top: 200px;
   align: center;
}
li{
	list-style: none;	
}
.buttons>form>img{
	width: 300px;
	height: 300px;
}
#vs{
	font-size: 30px;
}
#resultMenu{
	 border: 1px solid black;
}
.title1{
	position: absolute;
	left:280px;
	top:0px;	
}

.title2{
	position: absolute;
	left:680px;
	top:50px;	
}
.img1{ 
	position: absolute; 
	left:80px; 
 	top:50px; 

} 

.img2{ 
 	position: absolute; 
 	left:530px; 
	top:50px;

} 
.versus{
position:absolute;
left:430px;
top:100px;
}
.btndeco{
	text-size:20px;
	width:180px;
	height:70px;
	border-radius: 10px;
	background-color:  #FFB30E;
	border-color: white;
	color:white;
	opacity: 0.7;
	position: absolute;
	left:360px;
	top:400px;
}
</style>
</head>
<%
	UsersDto udto = (UsersDto)session.getAttribute("ruhDto");

	if(udto==null){
		pageContext.forward("index.jsp");
	}
%>
<body>
	<main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" data-navbar-on-scroll="data-navbar-on-scroll">
      
        <div class="container"><a class="navbar-brand d-inline-flex" href="main.jsp"><img class="d-inline-block" src="assets/img/gallery/logo.svg" alt="logo" /><span class="text-1000 fs-3 fw-bold ms-2 text-gradient">RU Hungry</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 my-2 mt-lg-0" id="navbarSupportedContent">
          
            <div class="mx-auto pt-5 pt-lg-0 d-block d-lg-none d-xl-block">
              <p class="mb-0 fw-bold text-lg-center">Deliver to: <i class="fas fa-map-marker-alt text-warning mx-2"></i><span class="fw-normal">Current Location </span><span>Mirpur 1 Bus Stand, Dhaka</span></p>
            </div>
            <form class="d-flex mt-4 mt-lg-0 ms-lg-auto ms-xl-0">
              <div class="input-group-icon pe-2"><i class="fas fa-search input-box-icon text-primary"></i>
                <input class="form-control border-0 input-box bg-100" type="search" placeholder="Search Food" aria-label="Search" />
              </div>
              <button class="btn btn-white shadow-warning text-warning" type="submit"> <i class="fas fa-user me-2"></i>Login</button>
            </form>
          </div>
        </div>
      </nav>
        <section class="py-5 overflow-hidden bg-primary" id="home">   <!-- 배경색 노랑-->>
          <div class="info">
         <img
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGMboZCO9t-ZUJA9cIEJaLXfp67qJmS2hHRcvDldP2L8eCedaRVpI05anMy8TANCPk6w&usqp=CAU"
            width="150px" height="150px"> <br />
            <h1 class="text-800 mb-5 fs-4">ID:<%=udto.getId()%></h1>
          <button class="btn1" type="button" onclick="showPopup()" >location</button>
            <br />
         <button class="btn1" type="submit">Reset</button>
         <br />
         
         <button class="btn1" type="submit" onclick="location.href='index.jsp'">LogOut</button>
         <br />
            
         
      </div>
      <div class="bbody">
      <div class="resp">
			<h1 class="title1 card-title mt-xl-5 mb-4">MENU<span class="text-primary">    WORLDCUP</span></h1>	
					<h1 class="text-800 mb-5 fs-4 title2" id="vs">16강</h1>
		<div class="buttons">
	
				
			<form action="FoodController.do" method="post">
				<input type="hidden" name="command" value="submit"/>
				<input type="hidden" name="id" value="<%=udto.getId()%>"/>
				<input id="simage" type="hidden" name="img" value="image"/>	
				<img class="img1"id="image"  onclick="change(0)">
				<h1 class="versus card-title mt-xl-5 mb-4" id="vs2">VS</h1>
				<img class="img2" id="images" onclick="change(1)">
				<div >
					<input class="btndeco" type="submit" value="등록" />
				</div>
				
			</form>
			<script type="text/javascript">				
			text="";
			var images=[];
			var sImages=[];
			
			var cnt=0;
			var num=0;
			var sNum=0;
			var cnt2=0;
		
			function show() {
				
				for (i=0; i<16; i++) {
					images[i] = "img/wimg/"+[i]+".jpg";
				}
					images.sort(function(a, b) {
						return 0.5-Math.random()
					});
				images.sort(function(a, b) {
					return 0.5-Math.random()
				});
				showImg(num);
			}
		
			show(0);
			
			function showImg(num) {
				document.getElementById('image').src=images[num];
				document.getElementById('images').src=images[num + 1];
				cnt2++;
// 					console.log("cnt2:"+cnt2);
					console.log("cnt:"+cnt);
// 					console.log("num:"+num);
// 					console.log("snum:"+sNum);
				var test=document.getElementById('image').src;
// 				console.log("src="+test);
				var test2=document.getElementById("simage").value=test;
// 				console.log("src2="+test2);
// 				console.log(sImages.length);
			}
		
			function change(n) {
				if (cnt2<19) {
					cnt++;
					if (n==0)
						sImages[sNum++]=images[num];
					else
						sImages[sNum++]=images[num + 1];
					num+=2;
					showImg(num);
					if (cnt==images.length/2) {
						for (i=0; i<sImages.length; i++) {
							images[i]=sImages[i];
							sImages[i]=null;
						}
						document.getElementById('vs').innerHTML=cnt+"강";
						if(cnt==2){
							document.getElementById('vs').innerHTML="결승";
						}else if(cnt==1){
							document.getElementById('vs').innerHTML="우승";
// 							$("#images").hide();
						}
						else if(cnt==0){
							$("#images").hide();
							$("#image").show(function(){
								$(this).animate({
									"width":500+"px",
									"height":500+"px"
								},2000,);									
							});
 							
						}
						images.splice(cnt);
						cnt=0;
						num=0;
						sNum=0;
						showImg(num);
					}
				}
			}
				
				
			</script>
			
		</div>
		</div>
		</div>
		<div class="chk">
			<form action='a.jsp'>
				음식<br> <input type='checkbox' name='food' value='korean' />한식
				<br> <input type='checkbox' name='food' value='chineese' />중식
				<br> <input type='checkbox' name='food' value='japanese' />일식
				<br> <input type='checkbox' name='food' value='boonsik' />분식 <br>
				<input type='checkbox' name='food' value='yangsik' />양식 <br> 
				<input type='checkbox' name='food' value='fastfood' />패스트푸드 <br> 
				<input type='submit'>
			</form>
		</div>
	</section>
	</main>
	<script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
   
</body>
</html>