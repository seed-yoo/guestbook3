<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%


List<PersonVo> personList = (List<PersonVo>) request.getAttribute("personList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%
	// 전달받은 personId 파라미터 가져오기
	String no = request.getParameter("no");
	String password = request.getParameter("password");

	int id = Integer.parseInt(no);
	%>




	<form action="/guestbook3/gbc" method="get">
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
				<input type="hidden" name="no" value="<%= id %>">
				<input type="text" name="action" value="delete">
				<td><button type="submit">삭제</button></td>
			</tr>
		</table>
	</form>

	<br>
	<br>
	<a href="/guestbook3/gbc?action=addform">메인으로 돌아가기</a>
</body>
</html>