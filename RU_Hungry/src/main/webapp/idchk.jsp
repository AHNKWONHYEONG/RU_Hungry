<%@page import="com.ruh.dtos.UsersDto"%>
<%@page import="com.ruh.daos.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<%
	String id=request.getParameter("id");
	UsersDao dao=new UsersDao();
	String resultId=dao.idChk(id);
	
	String isS="n";//사용여부를 나타내는 isS 정의(n는 사용가능, y은 사용못함)
	if(resultId!=null){
		isS="y";
	}
%>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript">
function confirm(isS){
	if(isS=="y"){
		//operner->registform.jsp
		var inputId=opener.document.getElementsByName("idchk")[0];//id입력박스
		inputId.value="";//회원가입폼에 아이디 입력박스를 ""으로 초기화
		inputId.focus();//사용자가 바로 입력할 수 있게 커서를 넣어준다.
	}else{
		//중복체크완료여부를 나타냄
		opener.document.getElementsByName("id")[0].title="n";
		opener.document.getElementsByName("pw")[0].focus();
	}
	self.close();//자신의 창을 닫는다.
}
</script>
</head>
<body>
<table border="1">
	<tr>
		<th>아이디</th>
		<td><%=id %></td>
	</tr>
	<tr>
		<th>사용가능여부</th>
		<td><%=isS.equals("n")?"사용가능합니다.":"중복된아이디입니다." %></td>
	</tr>
	<tr>
		<td colspan="2">
			<button onclick="confirm('<%=isS%>')">확인</button>
		</td>
	</tr>
</table>
</body>
</html>