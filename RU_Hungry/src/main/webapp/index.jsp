<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-3.6.0.js" ></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.wrap>img {
	position: relative;
	width: 100px;
	height: 100px;
}

.form-wrap {
	width: 380px;
	height: 700px;
	position: relative;
	margin: 6% auto;
	background: #fff;
	padding: 5px;
	overflow: hidden;
}

.button-wrap {
	width: 230px;
	margin: 35px auto;
	position: relative;
	box-shadow: 0 0 600px 9px #fcae8f;
	border-radius: 30px;
}

.togglebtn {
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
}

#btn {
	top: 0;
	left: 0;
	position: absolute;
	width: 110px;
	height: 100%;
	background: linear-gradient(to right, #ff105f, #ffad06);
	border-radius: 30px;
	transition: .5s;
}

.social-icons {
	margin: 30px auto;
	text-align: center;
}

.social-icons img {
	width: 30px;
	cursor: pointer;
}

.input-group {
	top: 180px;
	position: absolute;
	width: 280px;
	transition: .5s;
}

.input-field {
	width: 100%;
	padding: 10px 0;
	margin: 5px 0;
	border: none;
	border-bottom: 1px solid #999;
	outline: none;
	background: transparent;
}

.submit {
	width: 85%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: linear-gradient(to right, #ff105f, #ffad06);
	border: 0;
	outline: none;
	border-radius: 30px;
}

.checkbox {
	margin: 30px 10px 30px 0;
}

span {
	color: #777;
	font-size: 12px;
	bottom: 68px;
	position: absolute;
}

#login {
	left: 50px;
}

#register {
	left: 450px;
}
</style>
<script type="text/javascript">
//아이디체크여부 확인 중복일 경우 = 0 , 중복 아닐 경우 =1
//	var idChk=0;
	function idChk1(){
		var id = $("#id").val(); //id를 param
		$.ajax({
			url:"UsersController.do",
			data:{"command":"idChk","id":id},
			method:"POST",
			dataType:"Text",
			success : function(data){ //data= 컨트롤러에서보낸 count이다.
				if(data=="성공"){
					alert("성공 입니다.");
					//중복 아이디일시 아이디 칸을 공백으로 바꾸기.
				}else if(data=="중복"){
					alert("중복입니다");
					
					//아이디가 중복이 안되면 idck=1
					//idck=1; 
				}
			}
		})
		
	}	
// 		var id = document.getElementsByName("")[0].value; //입력된 아이디 구하기
// 		if(id==null || id==""|| id == undefined){
// 			alert("반드시 아이디를 입력하세요.");
// 			document.getElementsByName("id")[0].focus();
// 		}
// 		else{
// 			open("idchk.jsp?id="+id,"중복체크","width=400px,height=400px");
// 		}
// 	}
//  	$(function(){
//  		$("input[name]").not("[name=id]").focus(function(){
//  			var idTitle = $("input[name=id]").attr("title");
//  			if(idTitle=="n"){
//  				alert("아이디 중복체크를 확인하세요");
//  				document.getElementsByName("id")[0].focus();
//  			}
//  		});
		
//  		$("input[name==id]").focus(function(){
//  			$(this).attr("title","n");
//  		})
//  	})
</script>

</head>
<body>
	<div class="wrap">
		<img src="img/LA갈비.jpg" alt="LA갈비" />
		<img src="img/간장치킨.jpg"alt="간장치킨" />
		<img src="img/갈비찜.jpg" alt="갈비찜" /> 
		<img src="img/일본식덮밥.jpg" alt="일본식덮밥" /> 
		<img src="img/짜장면.jpg" alt="짜장면" />
		<img src="img/칼국수.jpg" alt="칼국수" />
		<img src="img/피자.jpg" alt="피자" />
		<img src="img/함박스테이크.png" alt="함박스테이크" />
		<img src="img/삼겹살.JPG" alt="삼겹살" />
	</div>
	<div class="form-wrap">
		<div class="button-wrap">
			<div id="btn"></div>
			<button type="button" class="togglebtn" onclick="login()">LOGIN</button>
			<button type="button" class="togglebtn" onclick="register()">REGISTER</button>
		</div>
		
		<form id="login" action="UsersController.do?command=login" class="input-group" method="post">
			<input type="text" name="id" class="input-field" placeholder="User name or Email" required>
			<input type="password" name="pw" class="input-field" placeholder="Enter Password" required>
			<input type="checkbox" class="checkbox"><span>Remember
				Password</span>
			<button type="submit" class="submit">Login</button>
		</form>
		
		
		<form id="register" action="UsersController.do?command=register"  method="post" class="input-group">
			<input type="text" name="id" class="input-field" placeholder="ID를 입력하세요" required="required">
<!-- 			<button type = "button" value="ID중복체크" onclick ="idChk()"/> -->
			<button type="button" onclick="idChk1()">id중복체크</button>
			<input type="password" name="pw" class="input-field" placeholder="PW를 입력하세요" required="required"> 
			<input type="text" name="name" class="input-field" placeholder="이름을 입력하세요" required="required">
			<input type="text" name="nickname" class="input-field" placeholder="별명을 입력하세요" required="required">
			<input type="text" name="si" class="input-field" placeholder="'시'를 입력하세요" required="required">
			<input type="text" name="nickname" class="input-field" placeholder="'구'를 입력하세요" required="required">
			
			<input type="radio" name="sexchk"  value="m" /><label>남</label>
			<input type="radio" name="sexchk"  value="w" /><label>여</label>
			<br/> <hr/>
			
			<div>
			<h5>생년월일을 선택하세요</h5>
			<input type="date"  name="birth" required="required">
			</div>
			
			<hr/>
			<input type="email" name="email" class="input-field" placeholder="이메일을 입력하세요"  required="required">
			<button type="submit" class="submit" >회원가입</button>
		</form>
	</div>
	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
			
		}
	</script>
</body>
</html>