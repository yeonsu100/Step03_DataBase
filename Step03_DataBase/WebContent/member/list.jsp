<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// MemberDao 객체의 참조값 얻어오기
    	MemberDao dao=MemberDao.getInstance();
    	// 회원목록 얻어오기
    	List<MemberDto> list=dao.getList();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
</head>
<body>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</body>
<div class="container">
	<h1>List of Member</h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Number</th>
				<th>Name</th>
				<th>Address</th>
				<th>UPDATE</th>
				<th>DELETE</th>
			</tr>
		</thead>
		<tbody>
		<%for(MemberDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">UPDATE</a></td>
				<td><a href="delete.jsp?num=<%=tmp.getName() %>">DELETE</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
	<a href="insertform.jsp">Add a member</a>
</div>
</html>