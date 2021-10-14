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

imgArray[0] = "randimg/0.jpg";
imgArray[1] = "randimg/1.jpg";
imgArray[2] = "randimg/2.jpg";
imgArray[3] = "randimg/3.jpg";
imgArray[4] = "randimg/4.jpg";
imgArray[5] = "randimg/5.jpg";

function funccc(){
   var imgNum = Math.round(Math.random()*2);
   var objImg = document.getElementById("introImg");
   objImg.src = imgArray[imgNum];
   let x = document.getElementsByClassName("quiz-text")[0];
      x.innerText="Javascript"; 
   if(imgNum==0){
       x.innerText="오늘의 추천 메뉴는 스무디입니다."; 
   }else if(imgNum==1){
       x.innerText="오늘의 추천 메뉴는 에스프레소 입니다."; 
   }else if(imgNum==2){
       x.innerText="오늘의 추천 메뉴는 커피 2잔 입니다."; 
   }
   
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
	height: 400px;
}

.info {
	width: 100px;
	height: 130px;
	text-align: center;
}

.infoo {
	display: inline-block;
	margin: 10px 0px;
	width: 90px;
}

.chk {
	position: absolute;
	left: 900px;
	top: 200px;
	align: center;
}
.randplay{
 position: absolute;
        left: 300px;
        top: 50px;
        align:center;
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
  <main xclass="main" id="top">
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
		  <section class="py-5 overflow-hidden bg-primary" id="home">	<!-- 배경색 노랑-->>
		    <div class="info">
			<img
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGMboZCO9t-ZUJA9cIEJaLXfp67qJmS2hHRcvDldP2L8eCedaRVpI05anMy8TANCPk6w&usqp=CAU"
				width="50px" height="50px"> <br />
			  <button class="btn1" type="submit">Location</button>
				<br />
			<button class="btn1" type="submit">Reset</button>
			<br />
			
			<button class="btn1" type="submit" onclick="location.href='index.jsp'">LogOut</button>
			<br />
			<div>
	<span><%=udto.getId()%></span>님 반갑습니다(아이디:<%=udto.getId()%>)
</div>
			
		</div>
		    <div class="container">
          <div class="row flex-center">
            <div class="col-md-5 col-lg-6 order-0 order-md-1 mt-8 mt-md-0"></div>
            <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
              <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light">Are you starving?</h1>
              <h1 class="text-800 mb-5 fs-4">Within a few clicks, find meals that<br class="d-none d-xxl-block" />are accessible near you</h1>
              <div class="card w-xxl-75">
                <div class="card-body">
                  <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                      <button class="nav-link active mb-3" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true"><i class="fas fa-motorcycle me-2"></i>Delivery</button>
                      <button class="nav-link mb-3" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false"><i class="fas fa-shopping-bag me-2"></i>Pickup</button>
                    </div>
                  </nav>
                  <div class="tab-content mt-3" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                      <form class="row gx-2 gy-2 align-items-center">
                        <div class="col">
                          <div class="input-group-icon"><i class="fas fa-map-marker-alt text-danger input-box-icon"></i>
                            <label class="visually-hidden" for="inputDelivery">Address</label>
                            <input class="form-control input-box form-foodwagon-control" id="inputDelivery" type="text" placeholder="Enter Your Address" />
                          </div>
                        </div>
                        <div class="d-grid gap-3 col-sm-auto">
                          <button class="btn btn-danger" type="submit">Find Food</button>
                        </div>
                      </form>
                    </div>
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                      <form class="row gx-4 gy-2 align-items-center">
                        <div class="col">
                          <div class="input-group-icon"><i class="fas fa-map-marker-alt text-danger input-box-icon"></i>
                            <label class="visually-hidden" for="inputPickup">Address</label>
                            <input class="form-control input-box form-foodwagon-control" id="inputPickup" type="text" placeholder="Enter Your Address" />
                          </div>
                        </div>
                        <div class="d-grid gap-3 col-sm-auto">
                          <button class="btn btn-danger" type="submit">Find Food</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
		<div class="randplay">
      
      <img id = "introImg" width="200px" height="150px" border="0" 
      src="randimg/Q.png">
      <button onclick="funccc()">클릭~</button>
      <p>
         <span class="quiz-text">버튼을 클릭하세요.</span>
    </p>
      </div>
		
	<br />

	<div class="bbody">
		
	</section>
		
		<div class="buttons">

			<button type="button">
				<img
					src="https://e7.pngegg.com/pngimages/42/565/png-clipart-trophy-computer-icons-award-medal-award.png"
					class="bigImage" onclick="location.href='worldcup.jsp'">
			</button>

			<button type="button">
				<img
					src="https://png.pngtree.com/png-vector/20191030/ourlarge/pngtree-maps-icon-outline-style-png-image_1922190.jpg"
					class="bigImage" onclick="location.href='choice.jsp'">
			</button>

			<button type="button">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAdVBMVEX///8AAADLy8tFRUX19fXFxcVaWlry8vL6+vqrq6vu7u5nZ2c0NDTIyMjOzs6zs7OSkpIICAguLi7g4OA5OTlfX19TU1NxcXGTk5Pi4uKAgIC5ubkbGxsRERE/Pz/a2tpJSUl6enqcnJyJiYkiIiIYGBikpKQkpEjSAAAEd0lEQVR4nO3diVbiQBAF0ERAIiJoEMWVRcb//8QxRCQkvaUTp+bVefcLqk6g0kt1J0mIiIiIiIiIiIiIiIiIiP65bLRbvuf7fPD4OZOO5RcM55u06nqUSYfUq+HtXVqXX0lH1aP5WyO/Q44X0oH1ZHhpzK/wLB1bL55erQmm6WAoHV53a0d+xS91Ih1gV4tmiTk3BX+KmesnWtpIx9iNvcicQJebl4AE03QtHWa84Z+gDO+l44y3C0owTefSgcbKwh4h8EMM+xcWUOcaIYW09CgdaqTgBNNUOtQ4Fy0yxHxhXLXIELOabltk+CEdbJSHFhleSgcbZdAiw3fpYKPct8gQ852v/xkuW2T4IB1slI8WGWLOEectMsRcO20zphlJBxtl3CLDJ+lg47TIUDrUSOEvxFw61Ejb4AyvpUONFLpMk6Yr6VAjjYIzfJEONdIkOEPQUpoMzduGBmPpUGOFzhAH0oFG2wZmiLrUFl5MUUtpkswCM8QclRaeAjNcSAcaLcuDEtzDltLQYopbSpPkOShD3FIauvuEOcEvhRVT5NaoLChD6JaaoF1g6SA7uQ5IEHOt9OgzIEPcMVshZBKMOv0thUyCUae/3wIylA6xI/+4DXPb6cS/PbOVDrEjf7vCTjrEjjwtwiluP9SRv5hCj9m+ZO+eBHPwLmj/uG0pHWBnt54MMXuFqnzjNuwxW8FXTDF79qo85xHegNfZjtzFdCodXg+2zgxRd3+r3G01yOtsR+71thvp8PrgzBB+RFNw7gRLB9eLR0eCmL3Bda59Uux1tiPXuA1/zFZwdfChTw5LrnGbkmsH7O3Q2Av6J/b1Nszm5yb7PqmGMVthYc0Qf3JYmth2Ee90lNIvG0uG6Av6J7Zxm4bJYcm2tP8pHVhvbFNEFZPDA9vSPvjeaJV53PYmHVaPzOfWN9Jh9cg8RbyVDqtH5nGbjslhyVxqFBUay3qbdFC9MrVkIDfONpmmiPg7h1WmpX0tk8OSqWtfy+SwZFpvU7BzWNUsNboKjWkXEblD36TZSove7VXXbFhA7/aqa47bVI3ZCtNagqgH1O3qS/s6dg6r6lNEHTuHVfVdRNxTlTb1cRvuqUqrWobS4fyC86V9PQv6J6uzDHVNDkvnC9/6Ck1y3qS4lw7mV6y1P8LqK1HXAkbFpGzcHyh8F/6YzEYX6iYVRERERET/nWwxW6tpKm0Yvhy7MAcrXfu/pfF5s8JG3Sy/+YHApa5fq/FUvqIdxMxyh4uexjbrR4O0NAk7rlXQ8V90HQTeSAfXC+cVnxpeGu6LMTTsQXnuwsJ/ZfguGcI/oOe7vQW/vc17nRn8C8N7+yX8Nob3m0jwEynvZx6R79g90P8MXbdiHMBXGt/XA17h2719F17j9yj6vj2u4KSs5+Z5+L+hb2CqomPfWU0VPEL3J4OUHEmwfyYQv5B+s904MIV/F/4wp6gowSS5MfwXVZTRk/G2ll+uZ8H7aFHNcXql5A6smpvV8n6fD7Zz+Hk9EREREREREREREREREUH6C66xKeXSJ+kcAAAAAElFTkSuQmCC"
					class="bigImage" onclick="location.href='map.jsp'">
			</button>

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
	</div>
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