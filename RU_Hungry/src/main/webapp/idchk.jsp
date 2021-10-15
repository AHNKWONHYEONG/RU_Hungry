<%@page import="com.ruh.dtos.UsersDto"%>
<%@page import="com.ruh.daos.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript">
	function confirm(isS){
		if(isS=="n"){
			//opener --> registform.jsp
			var inputId=opener.document.getElementsByName("id")[0]; //id 입력박스 객체 구함
			inputId.value=""; //회원가입폼에 아이디 입력박스를 ""으로 초기화한다.
			inputId.focus(); //사용자가 바로 입력할 수 있게 커서를 넣어준다.
		}else{
			opener.document.getElementsByName("id")[0].title="y"; //중복체크완료여부
			opener.document.getElementsByName("pw")[0].focus(); //중복체크끝나고 바로 비밀번호로 커서 이동
		}
		self.close(); //자신의 현재 창을 닫는다.
	}
</script>
</head>
<%

 	String id = request.getParameter("id");
 	UsersDao dao = UsersDao.getLoginDao();
 	String resultId = dao.idChk(id); //중복된 아이디 확인: 결과값이 있으면 사용 x
	
 	String isS = "y"; //사용여부를 나타내는 isS 정의
 	if(resultId!= null){
 		isS="n";
 	}
%>
<body>
<table border="1">
	<tr>
		<th>아이디</th>
		<td><%=id%></td>
	</tr>
	<tr>
		<th>사용가능여부</th>
		<td><%=isS.equals("y")?"사용가능":"중복된 아이디입니다."%></td>
	</tr>
	<tr>
		
		<td colspan="2">
			<!-- 괄호에 문자는 ''처리해주고  숫자는 그냥 써도 무방 ex.(5) -->
			<button onclick ="confirm('<%=isS%>')">확인</button> 
		</td>
	</tr>
</table>
</body>
</html>