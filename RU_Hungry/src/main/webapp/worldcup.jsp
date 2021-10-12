<%@page import="com.ruh.dtos.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-3.6.0.js"></script>
<style type="text/css">
.buttons {
	padding: 20px 150px;
	width: 900px;
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
li{
	list-style: none;	
}
.buttons>img{
	width: 300px;
	height: 300px;
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
	<div class="header">
		<div class="home">
			<button type="button">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEX///8AAADi4uI+Pj6Ghoa0tLQwMDDo6OilpaXKysotLS3y8vKWlpbr6+sWFhbu7u4oKCgiIiIbGxv39/cuLi5SUlJLS0vCwsKAgIBbW1sRERHW1tY1NTVqamrNzc16enpx7ABkAAAEgklEQVR4nO2c63aqMBBGpTeLHMRqtTfbvv9bHqsil0wgGXKZsL79s1oXezGT+dJUFgsAAAAAAAAAAAAABg+xL8Azu32238W+CJ/sDlmWHWasuDtmfxxnq1htsgubKval+KFcZTWrMvbF+OB2B+d6F4t11mZdxL4g15SbrMtmZoXa6sF59mLxoghm2cuMCrVaE4KnXpzNcrNUS/RaqMvYl+aGSid4UpzFXSzoEr0W6gx6saQWmdZyk/yKSoyJXqEmrlj0B73KJulC1YyJXi8mvNwoUU1zF5MtVLIHn4mfpdqLxZaQyRc58dNtkr1YUj2Yn16gFNcJ3kUyquXnlyjF9AJcRS0y+fVFSjG1XT8Z1fLby2ShJtWLZFTLW2+gFFMKcOSYyDtvoRRfk1Ekd/R5703kXUykUMmo1hfU9GISyw0Z1VRBzYqaQKEa9GANORfFK2qiGk2KAa60EdQoir6LFiV6IbVCHYxqNGkFuJGoRpNSgDMeE13SGRrWPViTSi8aRTWaNAKcYVSjSSHADezoTZC/6ycPX8wFNYqC7iJrTHSRPTRGd/QmSN71s8dEF7lDgxHVaKQGuEljoovMocGMajQSA5yjHqyR14sTohqNtADnsAdrZPXixKhGIynATY5qNHICnIOoRiMlwDmJajQyApzjMdFFwtAg/0/GlaBm9ActVA9jokvsoeE0qtHEDXBee7AmZi9aHb7wiXdsY3n4wifWsU2QEr0Qp1Cd7ehNiLHr9xbVaMIHOI9RjSZ0gCtfAwuG/r8b5zt6E0Lu+r1HNZpwAW4ZchVtQ66oHnb9AedgnzBzMfCY6BJiaASLajT+A1zEEr3gu1CDRjUavwEuag/W+OzFADt6E/zt+qP3YI2vXowS1Wj8BLhIUY3GR4DzcvjCx/2xjafDFz6uj23IMfHm7noZvFGFyu5F+kvKdy4v2Jo76pK4u37Nl5QFGjKHhu5LyhINWcc22i8pizRkDA39l5RlGloHuIEHBQg1tOxF8vBFuKHVsQ25oxdvaLHrH36WhVxD40Ild/RJGBru+gefJ2NmmD/zMEi8w4ZGAW45/DwZI8P3kY/Q8T7ZMHsZ32l8jF2GgeED09Dg2aZjhtnH6EcQXfgp1vBT+QiTTtz1Fb8OYg0PX31BoweHFsfOL+WLe7GG970t8dFw6FdtxdP6Jtmwo3g0jt+tjdPfAi7asKVos4Xa1anmPKFkG94UV1YP770W6mUECze8KpqX6FXx6SYo3vCs+GS9BT4NjTpEiTc8KZqNiS7VLSXKN1zk0/7ynYDhRCYafv/T8z0Lw8eBdz7CsA8MecBQAYYNMFSAIQ8YKsCwAYYKMOQBQwUYNsBQAYY8YKgAwwYYKsCQBwwVYNgAQwUY8oChAgwbYKgAQx4wVIBhAwwVYMgDhgowbIChAgx5wFABhg0wVIAhDxgqwLABhgow5AFDhcQNf8rlCNUv0/C3Gvvo8ieAoTXmhtbAEIYwhCEMYQhDGMIQhnMy3K+eJrAdNNxO+ejV3pEhAAAAAAAAAAAAAAAAAABACP4DkSlRlcOCV/AAAAAASUVORK5CYII="
					width="100px" height="100px" onclick="location.href='main.jsp'">
			</button>
		</div>
	</div>
	<br />

	<div class="bbody">
		<div class="info">
			<img
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGMboZCO9t-ZUJA9cIEJaLXfp67qJmS2hHRcvDldP2L8eCedaRVpI05anMy8TANCPk6w&usqp=CAU"
				width="50px" height="50px"> <br />
			<button type="button" class="infoo">위치설정</button>
			<br />
			<button type="button" class="infoo">메뉴 월드컵 다시하기</button>
			<br />
			<button type="button" class="infoo"
				onclick="location.href='index.jsp'">로그아웃</button>
			<br />
			<span><%=udto.getId()%></span>님 반갑습니다(아이디:<%=udto.getId()%>)
		</div>
		<div class="buttons">
			<h1>메뉴 월드컵</h1>
			<p id="cal"></p>
			<img id="image" onclick="change(0)">	
			<img id="images" onclick="change(1)">
			
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
						images[i] = "img/"+(i)+".jpg";
					}
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
				}
			
				function change(n) {
					if (cnt2<20) {
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
							images.splice(cnt);
							cnt=0;
							num=0;
							sNum=0;
							showImg(num);
						}
					}
			
				}
			
				document.getElementById('cal').innerHTML=text;
			</script>
			
				
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
	</div>
</body>
</html>