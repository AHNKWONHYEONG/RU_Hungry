<%@page import="com.ruh.daos.ReviewDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ruh.dtos.ReviewDto"%>
<%@page import="com.ruh.dtos.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<script type="text/javascript" src="jquery-3.6.0.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
	padding: 0px 200px;
	width: 900px;
}

.bigImage {
	width: 200px;
	height: 200px;
}

.abody {
 	height:30px; 
/* 	width:600px; */
	background-color: #FFB30E;
/* 	position: absolute; */
/* 	left: 200px; */
/*  	top: 400px;  */
	
}

.bbody {
 	height: 800px; 
/* 	width:600px; */
	background-color: white;
/* 	position: absolute; */
/* 	left: 200px; */
/*  	top: 400px;  */
	
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
	left: 1300px;
	top: 200px;
	align: center;
}


.resp{
	position: absolute;
 	left: 450px; 
 	top: 220px; 
	align: center;
}
.resp_table{
	position:absolute;
/* 	left:450px; */
/* 	top:220px; */
/* 	border: 1px solid black; */
	width: 800px;
/* 	height:350px; */
	border-radius: 10px;
}

.nav1{
	position: absolute;
	left:330px;
	top:500px;
}
.btndeco{
	border-radius: 10px;
	background-color:  #FFB30E;
	border-color: white;
	color:white;
	opacity: 0.7;
}
</style>
</head>
<%
	UsersDto udto = (UsersDto)session.getAttribute("ruhDto");

 	if(udto==null){
 		pageContext.forward("index.jsp");
 	}
	
	ReviewDao dao=new ReviewDao();
	List<ReviewDto> list=dao.getBoardList();
	
	
	request.setAttribute("list", list);

%>
<script type="text/javascript">
	//전체 체크박스 기능
	function allSel(bool){//bool은 체크여부를 받는다(true/false)
		var chks=document.getElementsByName("chk");//chks[chk,chk,chk,chk..]
		for (var i = 0; i < chks.length; i++) {
			chks[i].checked=bool;//각각의 체크박스에 체크여부(true/false)를 적용
		}
	}
	
</script>
<body>
<c:set var="lists" value="${list}" />
<c:if test="${empty lists}">
<%-- 	<c:redirect url="index.jsp"/> --%>
</c:if>

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
			<!-- 배경색 노랑-->
			
			<div class="info">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGMboZCO9t-ZUJA9cIEJaLXfp67qJmS2hHRcvDldP2L8eCedaRVpI05anMy8TANCPk6w&usqp=CAU"
					width="150px" height="150px"> <br />
				<h1 class="text-800 mb-5 fs-4">
					ID:<%=udto.getId()%></h1>
				<button class="btn1" type="button" onclick="showPopup()">location</button>
				<br />
				<button class="btn1" type="submit">Reset</button>
				<br />

				<button class="btn1" type="submit"
					onclick="location.href='index.jsp'">LogOut</button>
				<br />
				</div>
			<div class="abody"></div>
			<div class="bbody">
			<div class="resp">
			<form action="ReviewController.do" method="post">
				<input type="hidden" name="command" value="muldel" />
				<div class="container">
				<table class="resp_table table table-striped" id="review" >
<%-- 					<col width="70px"> --%>
<%-- 					<col width="50px"> --%>
<%-- 					<col width="300px"> --%>
<%-- 					<col width="100px"> --%>
<%-- 					<col width="200px"> --%>
					<tr>
						<th style="width:70px;"><input type="checkbox" name="all"
							onclick="allSel(this.checked)" />번호</th>
						<th>카테고리</th>
						<th>식당이름</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
						<c:choose>
							<c:when test="${empty lists}">
								<tr>
									<td colspan="5">----글이 없습니다.----</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${list}">
									<tr>
										<td><input type="checkbox" name="chk" value="${dto.seq}"/>${dto.seq}</td>
										<td>${dto.category}</td>
										<td><a href="ReviewController.do?command=detail&seq=${dto.seq}">${dto.title}</a></td>										
										<td>${dto.id}</td>
										<td><fmt:formatDate value="${dto.regdate}" pattern="yyyy.MM.dd hh시:mm분" /></td>
									</tr>
								</c:forEach>		
							</c:otherwise>
						</c:choose>
					<tr>
						<td colspan="7">
							<a href="ReviewController.do?command=insert">
							<button type="button" class="btndeco">글쓰기</button></a> 
							<input type="submit" class="btndeco" value="글삭제" />
						<a href="UsersController.do?command=usermain"><button class="btndeco" type="button">메인</button></a>
						</td>
					</tr>
				</table>
				</div>
				<nav class="nav1"> 
				<ul class="pagination justify-content-center"> 
				<li class="page-item"><a class="page-link" href="">◀</a></li> 
				<li class="page-item"><a class="page-link" href="">1</a></li> 
				<li class="page-item"><a class="page-link" href="">2</a></li> 
				<li class="page-item"><a class="page-link" href="">3</a></li> 
				<li class="page-item"><a class="page-link" href="">▶</a></li> 
				</ul> 
				</nav>

			</form>
			</div>
			</div>
		<div class="chk">
			<form action='ReviewController.do' method="post">음식<br>
			<input type="hidden" name="command" value="filter" /> 
<!-- 			<input type="hidden" id="category" name="category" /> -->
			<input type='checkbox' class='food'name="category" value='한식' />한식<br> 
			<input type='checkbox' class='food'name="category" value='중식' />중식<br> 
			<input type='checkbox' class='food'name="category" value='일식' />일식<br> 
			<input type='checkbox' class='food'name="category" value='분식' />분식 <br>
			<input type='checkbox' class='food'name="category" value='양식' />양식 <br> 
			<input type='checkbox' class='food'name="category" value='패스트푸드' />패스트푸드 <br> 
			<input type='submit' value="확인">
			확인:<b id="sss"></b>
			</form>
			<script type="text/javascript">
			$(function(){
					$(".food").click(function(){
						var category=[];
// 						var category="";
						
						$(".food").each(function(){
							if($(this).is(":checked"))
								category.push($(this).val());
// 								category+=($(this).val());
						});

// 						$("#sss").text(category);
// 						var test=$("#chk").value=category;
// 						console.log(category);
// 						console.log(test);
						var test=document.getElementById('sss').innerHTML=category;
// 						console.log("sss="+test);
// 						var test2=document.getElementById("category").value=test;
// 						console.log("inputV="+test2);
					
// 						$.ajax({
							
// 							url:"ReviewController.do",
// 							method:"post",
// 							data:{"command":"filter","category":category},
// 							dataType:"json",
// 							async:false,
// 							success:function(obj){
// 								var doc=$("#list");
// 								for (var i=0; i<map["list"].lenght; i++){
// 									var seq=map["list"][i]["seq"];
// 									var categoty=map["list"][i]["categoty"];
// 									var title=map["list"][i]["title"];
// 									var id=map["list"][i]["id"];
// 									var content=map["list"][i]["content"];
// 									var regdate=map["list"][i]["regdate"];
									
// 									doc.innerHTML+="<td>"+seq+"</td><td>"+category+"</td><td>"+title+"</td><td>"+id+"</td><td>"+content+"</td><td>"+regdate+"</td>"
// 								}
// 							},
// 							error:function(){
// 								alert("통신실패");
// 							}
// 						});
					});
				});
				
			</script>
		</div>
		</section>
		</main>
		
		
	<script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
</body>
</html>