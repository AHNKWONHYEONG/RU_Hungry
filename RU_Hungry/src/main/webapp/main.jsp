<%@page import="com.ruh.dtos.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
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
<script type="text/javascript">
var imgArray = new Array();

imgArray[0] = "img/wimg/0.jpg";
imgArray[1] = "img/wimg/1.jpg";
imgArray[2] = "img/wimg/2.jpg";
imgArray[3] = "img/wimg/3.jpg";
imgArray[4] = "img/wimg/4.jpg";
imgArray[5] = "img/wimg/5.jpg";
imgArray[6] = "img/wimg/6.jpg";
imgArray[7] = "img/wimg/7.jpg";
imgArray[8] = "img/wimg/8.jpg";
imgArray[9] = "img/wimg/9.jpg";
imgArray[10] = "img/wimg/10.jpg";
imgArray[11] = "img/wimg/11.jpg";
imgArray[12] = "img/wimg/12.jpg";
imgArray[13] = "img/wimg/13.jpg";
imgArray[14] = "img/wimg/14.jpg";
imgArray[15] = "img/wimg/15.jpg";

function funccc(){
   
   
   var imgNum = Math.round(Math.random()*15);
   var objImg = document.getElementById("img");
   objImg.src = imgArray[imgNum];
   let x = document.getElementsByClassName("quiz-text")[0];
      x.innerText="Javascript"; 
   if(imgNum==0){
       x.innerText="오늘의 추천 메뉴: LA갈비"; 
   }else if(imgNum==1){
       x.innerText="오늘의 추천 메뉴: 치킨"; 
   }else if(imgNum==2){
       x.innerText="오늘의 추천 메뉴: 갈비찜"; 
   }else if(imgNum==3){
       x.innerText="오늘의 추천 메뉴: 삼겹살"; 
   }else if(imgNum==4){
       x.innerText="오늘의 추천 메뉴: 김치찌개"; 
   }else if(imgNum==5){
       x.innerText="오늘의 추천 메뉴: 나베"; 
   }else if(imgNum==6){
       x.innerText="오늘의 추천 메뉴: 돈까스"; 
   }else if(imgNum==7){
       x.innerText="오늘의 추천 메뉴: 짜장면"; 
   }else if(imgNum==8){
       x.innerText="오늘의 추천 메뉴: 칼국수"; 
   }else if(imgNum==9){
       x.innerText="오늘의 추천 메뉴: 피자"; 
   }else if(imgNum==10){
       x.innerText="오늘의 추천 메뉴: 파스타"; 
   }else if(imgNum==11){
       x.innerText="오늘의 추천 메뉴: 쭈꾸미"; 
   }else if(imgNum==12){
       x.innerText="오늘의 추천 메뉴: 초밥"; 
   }else if(imgNum==13){
       x.innerText="오늘의 추천 메뉴: 햄버거"; 
   }else if(imgNum==14){
       x.innerText="오늘의 추천 메뉴: 족발"; 
   }else if(imgNum==15){
       x.innerText="오늘의 추천 메뉴: 스테이크"; 
   
};
function showPopup() {
   alert("hi");
   window.open("location.jsp", "위치설정 팝업", "width=600, height=500, left=100, top=50");
};


</script>
<style type="text/css">
.buttons {
   padding: 0px 200px;
   width: 900px;
}

.bigImage {
   width: 200px;
   height: 200px;
}



.bbody {
    height: 800px; 
/*    width:600px; */
   background-color: white;
/*    position: absolute; */
/*    left: 200px; */
/*    top: 300px; */
   
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
.randplay{
       position: absolute;
        left: 500px;
        top: 50px;
        align:center;
}
.btnbg1{
   background-color:transparent;
   border: 0;
   outline: 0;
   position: absolute;
   left: 290px;
   top: 550px;
}

.btnbg2{
   background-color:transparent;
   border: 0;
   outline: 0;
   position: absolute;
   left: 640px;
   top: 550px;
}
.btnbg3{
   background-color:transparent;
   border: 0;
   outline: 0;
   position: absolute;
   left: 1000px;
   top: 550px;
}
.resp_table{
   position:absolute;
   left:450px;
   top:220px;
/*    border: 1px solid black; */
   width: 800px;
   height:350px;
   border-radius: 10px;
}
.td1{
   width:300px;
   padding:20px;
   }
   
.td2{
   width:500px;
   }
.b1{
	position: absolute;
	left:310px;
	top:740px;
   }
.b2{
	position: absolute;
	left:675px;
	top:740px;
   }
.b3{
	position: absolute;
	left:1050px;
	top:740px;
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
      
<!--       <div class="randplay"> -->
      
<!--       <img id = "introImg" width="200px" height="150px" border="0"  -->
<!--       src="randimg/Q.png"> -->
<!--       <button onclick="funccc()">클릭~</button> -->
<!--       <p> -->
<!--          <span class="quiz-text">버튼을 클릭하세요.</span> -->
<!--     </p> -->
<!--       </div> -->
      
   <br />

   <div class="bbody">
   <div class="resp">
   
   <form action="RandController.do" method="post">
	<input type="hidden" name="id" value="<%=udto.getId()%>"/>
	<input id="rimage" type="hidden" name="img" value="image"/>	
   <table class="resp_table shadow-lg">
   <tr>
   <td class="td1">
   <h3 class="card-title mt-xl-5 mb-4"> Today Food recommendations<span class="text-primary"> for you!</span></h3>
   <h6><span class="quiz-text"></span></h6>
   <div class="d-grid bottom-0"><button class="btn btn-lg btn-primary mt-xl-4" onclick="funccc()">Click!</button></div>
   <div class="d-grid bottom-0"><input type="submit" class="btn btn-lg btn-primary mt-xl-2" value="I like it!"/></div>
   </td>
   <td class="td2">
   <img class=" rounded-top rounded-md-end rounded-md-top-0" id = "img" width="500px" height="350px" border="0" 
      src="randimg/Q.png">
   </td>
   </tr>
   </table>
   </form>
   
   </div>
      <section class="py-0 bg-primary-gradient">
      <div class="container">
          <div class="row justify-content-center g-0">
            <div class="col-xl-9">
            
              <div class="row">
              <div class="col-sm-6 col-md-3 mb-6">
                  <div class="text-center">
         <button type="button" class="btnbg1">
            <img class="shadow-icon" src="assets/img/gallery/meals.png" height="180" alt="..."  onclick="location.href='worldcup.jsp'"/>
         </button>
         <h4><span class="b1 text-primary">Food WorldCup</span></h4>
         </div>
         </div>
         <div class="col-sm-6 col-md-3 mb-6">
                  <div class="text-center">
         <button type="button" class="btnbg2">
            <img class="shadow-icon" src="assets/img/gallery/order.png" height="180" alt="..."  onclick="location.href='choice.jsp'"/>
         </button>
         <h4><span class="b2 text-primary">Review</span></h4>
         </div>
         </div>
           <div class="row">
         <div class="col-sm-6 col-md-3 mb-6">
           <div class="text-center">
         <button type="button" class="btnbg3">
            <img class="shadow-icon" src="assets/img/gallery/location.png" height="180" alt="..." onclick="location.href='map.jsp'"/>
         </button>
         <h4><span class="b3 text-primary">Map</span></h4>
         </div>
         </div>
         </div>
      </div>
   </div>
   </div>
   </div>
   </section>
   </div>
      <div class="chk">
         <form action='a.jsp'>음식<br> 
         <input type='checkbox' name='food' value='korean' />한식<br>
         <input type='checkbox' name='food' value='chineese' />중식<br>
         <input type='checkbox' name='food' value='japanese' />일식<br>
         <input type='checkbox' name='food' value='boonsik' />분식 <br>
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