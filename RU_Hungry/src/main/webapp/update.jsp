<%@page import="com.ruh.dtos.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
      <link href="assets/css/theme.css" rel="stylesheet" />
<style type="text/css">
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
.resp_table{
/* 	border:3px solid #F17228; */
   position:absolute;
   left:-10px;
   top:-10px;
/*    border: 1px solid black; */
   background-color:white;

   width: 800px;
   height:500px;
   border-radius: 30px; 
	
}
.resp{
/* 	border:3px solid #F17228; */
   position:absolute;
   left:450px;
   top:220px;
   background-color:#F17228;
/*    border: 1px solid black; */
   width: 800px;
   height:500px;
   border-radius: 30px; 
}
th{
padding:20px;
text-align: center;
}
.td1,.td2,.td3,.td4{
/* text-align: center; */
}
.btndeco{
	border-radius: 10px;
	background-color:  #FFB30E;
	border-color: white;
	color:white;
	opacity: 0.7;
}
.input1,.input2,.input3 {
	border:5px solid #616161;
	border-radius: 5px;
}
textarea{
	background-color: #f0f0f0;
	border:none;
	border-radius: 5px;
	color: black;
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
        <section class="py-5 overflow-hidden bg-primary" id="home">
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
<!-- 	<div class="header"> -->
<!-- 		<div class="home"> -->
<!-- 			<button type="button"> -->
<!-- 				<img -->
<!-- 					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEX///8AAADi4uI+Pj6Ghoa0tLQwMDDo6OilpaXKysotLS3y8vKWlpbr6+sWFhbu7u4oKCgiIiIbGxv39/cuLi5SUlJLS0vCwsKAgIBbW1sRERHW1tY1NTVqamrNzc16enpx7ABkAAAEgklEQVR4nO2c63aqMBBGpTeLHMRqtTfbvv9bHqsil0wgGXKZsL79s1oXezGT+dJUFgsAAAAAAAAAAAAABg+xL8Azu32238W+CJ/sDlmWHWasuDtmfxxnq1htsgubKval+KFcZTWrMvbF+OB2B+d6F4t11mZdxL4g15SbrMtmZoXa6sF59mLxoghm2cuMCrVaE4KnXpzNcrNUS/RaqMvYl+aGSid4UpzFXSzoEr0W6gx6saQWmdZyk/yKSoyJXqEmrlj0B73KJulC1YyJXi8mvNwoUU1zF5MtVLIHn4mfpdqLxZaQyRc58dNtkr1YUj2Yn16gFNcJ3kUyquXnlyjF9AJcRS0y+fVFSjG1XT8Z1fLby2ShJtWLZFTLW2+gFFMKcOSYyDtvoRRfk1Ekd/R5703kXUykUMmo1hfU9GISyw0Z1VRBzYqaQKEa9GANORfFK2qiGk2KAa60EdQoir6LFiV6IbVCHYxqNGkFuJGoRpNSgDMeE13SGRrWPViTSi8aRTWaNAKcYVSjSSHADezoTZC/6ycPX8wFNYqC7iJrTHSRPTRGd/QmSN71s8dEF7lDgxHVaKQGuEljoovMocGMajQSA5yjHqyR14sTohqNtADnsAdrZPXixKhGIynATY5qNHICnIOoRiMlwDmJajQyApzjMdFFwtAg/0/GlaBm9ActVA9jokvsoeE0qtHEDXBee7AmZi9aHb7wiXdsY3n4wifWsU2QEr0Qp1Cd7ehNiLHr9xbVaMIHOI9RjSZ0gCtfAwuG/r8b5zt6E0Lu+r1HNZpwAW4ZchVtQ66oHnb9AedgnzBzMfCY6BJiaASLajT+A1zEEr3gu1CDRjUavwEuag/W+OzFADt6E/zt+qP3YI2vXowS1Wj8BLhIUY3GR4DzcvjCx/2xjafDFz6uj23IMfHm7noZvFGFyu5F+kvKdy4v2Jo76pK4u37Nl5QFGjKHhu5LyhINWcc22i8pizRkDA39l5RlGloHuIEHBQg1tOxF8vBFuKHVsQ25oxdvaLHrH36WhVxD40Ild/RJGBru+gefJ2NmmD/zMEi8w4ZGAW45/DwZI8P3kY/Q8T7ZMHsZ32l8jF2GgeED09Dg2aZjhtnH6EcQXfgp1vBT+QiTTtz1Fb8OYg0PX31BoweHFsfOL+WLe7GG970t8dFw6FdtxdP6Jtmwo3g0jt+tjdPfAi7asKVos4Xa1anmPKFkG94UV1YP770W6mUECze8KpqX6FXx6SYo3vCs+GS9BT4NjTpEiTc8KZqNiS7VLSXKN1zk0/7ynYDhRCYafv/T8z0Lw8eBdz7CsA8MecBQAYYNMFSAIQ8YKsCwAYYKMOQBQwUYNsBQAYY8YKgAwwYYKsCQBwwVYNgAQwUY8oChAgwbYKgAQx4wVIBhAwwVYMgDhgowbIChAgx5wFABhg0wVIAhDxgqwLABhgow5AFDhcQNf8rlCNUv0/C3Gvvo8ieAoTXmhtbAEIYwhCEMYQhDGMIQhnMy3K+eJrAdNNxO+ejV3pEhAAAAAAAAAAAAAAAAAABACP4DkSlRlcOCV/AAAAAASUVORK5CYII=" -->
<!-- 					width="100px" height="100px" onclick="location.href='main.jsp'"> -->
<!-- 			</button> -->
<!-- 		</div> -->
<!-- 		<div class="randplay"> -->
      
<!--       <img id = "introImg" width="200px" height="150px" border="0"  -->
<!--       src="randimg/Q.png"> -->
<!--       <button onclick="funccc()">클릭~</button> -->
<!--       <p> -->
<!--          <span class="quiz-text">버튼을 클릭하세요.</span> -->
<!--     </p> -->
<!--       </div> -->
		
<!-- 	</div> -->
<!-- 	<br /> -->

	<div class="bbody">
	 <div class="resp">
		<div class="buttons">
			<table class="resp_table shadow-lg">
				<jsp:useBean id="dto" class="com.ruh.dtos.ReviewDto" scope="request" />
			<form action="ReviewController.do" method="post">
				<input type="hidden" name="command" value="updateboard" />
				<input type="hidden" name="seq" value="<jsp:getProperty property="seq" name="dto"/>"/>
					<tr>
						<th>카테고리</th>
						<td class="td1"><jsp:getProperty property="category" name="dto"/></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td class="td2"><jsp:getProperty property="id" name="dto"/></td>
					</tr>
					<tr>
						<th>식당이름</th>
						<td class="td3"><input type="text" name="title" value="<jsp:getProperty property="title" name="dto"/>"/></td>
					</tr>
					<tr>
						<th>내용</th>
						<td class="td4"><textarea rows="10" cols="60" name="content"><jsp:getProperty property="content" name="dto"/></textarea></td>
					</tr>
					<tr>
						<td colspan="2" style="padding-bottom: 15px;text-align: center;">
							<input type="submit" class="btndeco" value="수정"/>
							<button type="button" class="btndeco" onclick="boardList()">목록</button>
						</td>
					</tr>
					</form>
				</table>
			
		
</div>
			
		</div>
		
		<div class="buttons">
			
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
	</section>
	</main>
	<script type="text/javascript">
	function boardList(){
		location.href="ReviewController.do?command=detail&seq=${dto.seq}";

	}
</script>
 <script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
</body>
</html>