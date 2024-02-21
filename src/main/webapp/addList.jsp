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
<title>List</title>
</head>
<body>
	<form action="/guestbook3/gbc" method="get">
		<table border="1" width="540px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols="72" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="4">
				<input type="hidden" name="action" value="insert"> <br>
					<button type="submit">등록</button>
				</td>
			</tr>
		</table>
	</form>
	<br>

	<%
	for (int i = 0; i < personList.size(); i++) {
	%>
	<table border="1" width="540px">
		<tr>
			<td><%=personList.get(i).getNo()%></td>
			<td><%=personList.get(i).getName()%></td>
			<td><%=personList.get(i).getReg_date()%></td>
			<td>
			<%=personList.get(i).getNo()%> 
			<a href="/guestbook3/gbc?action=dform&no=<%=personList.get(i).getNo()%>">삭제</a>
			</td>
		</tr>
		<tr>
			<td colspan="4"><%=personList.get(i).getContent()%></td>
		</tr>
	</table>
	<br>
	<%
	}
	%>



	<br>
</body>
</html>