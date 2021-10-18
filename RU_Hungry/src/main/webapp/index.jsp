<%@page import="com.ruh.daos.AddressDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	function idChk(){
		var id = document.getElementsByName("id")[0].value;
		$.ajax({
			url:"UsersController.do",
			data:{"command":"idChk","id":id},
			method:"POST",
			dataType:"Text"
			success : function(data){ //data= 컨트롤러에서보낸 count이다.
				if(data==1){
					alert("중복아이디 입니다.");
					//중복 아이디일시 아이디 칸을 공백으로 바꾸기.
				}
				else if(data==0){
					alert("사용가능 합니다");
				}
			}
		})
	}	

</script>
</head>
<%
	AddressDao dao=new AddressDao();
%>
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
			<input type="text" name="idchk" class="input-field" placeholder="ID를 입력하세요" required="required">
<!-- 			<button type = "button" value="ID중복체크" onclick ="idChk()"/> -->
			<button type="button" onclick="idChk()">id중복체크</button>
			<input type="password" name="pw" class="input-field" placeholder="PW를 입력하세요" required="required"> 
			<input type="text" name="name" class="input-field" placeholder="이름을 입력하세요" required="required">
			<input type="text" name="nickname" class="input-field" placeholder="별명을 입력하세요" required="required">
			<select name="setsi" id="setsi" style="width: 100px;">
				<option value="X" >시</option>
				<option value="서울특별시">서울특별시</option>
			</select>
			<select name="setgu" id="setgu">
				<option value="X">구</option>
				<option value="영등포구">영등포구</option>
				<option value="양천구">양천구</option>
				<option value="동작구">동작구</option>
			</select>
			<button type="button" onclick="adChk()">확인</button>
<!--				<button type="button" onclick="adChk()">주소체크</button> -->
 			<input type="text" name="si" id="si" class="input-field" placeholder="'시'를 입력하세요" readonly="readonly" required="required"> 
			<input type="text" name="gu" id="gu" class="input-field" placeholder="'구'를 입력하세요" readonly="readonly"required="required"> 
			<br/>
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
	<script type="text/javascript">
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
		
		function idChk(){
			var id=document.getElementsByName("idchk")[0].value;//입력된 아이디 구함
			console.log(id);
			if(id==null||id==""||id==undefined){
				alert("반드시 아이디를 입력하세요");
				document.document.getElementsByName("id")[0].focus();
			}else{
				open("idchk.jsp?id="+id,"중복체크","width=300px, height=300px,");	
			}
		}
		function adChk(){
			 var si =document.getElementById("setsi").options[document.getElementById("setsi").selectedIndex].value;
			 var gu =document.getElementById("setgu").options[document.getElementById("setgu").selectedIndex].value;
			 var x= document.getElementById("si");
			 var y= document.getElementById("gu");
				 x.value=si;
				 y.value=gu;
			console.log(si,gu);	 
 		}
		
		
	</script>
</body>
</html> 