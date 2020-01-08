<%@page import="test.todo.dto.ToDoDto"%>
<%@page import="test.todo.dao.ToDoDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>

</style>
</head>
<body>
<%
	// ToDoDao 객체의 참조값 얻어오기
	ToDoDao dao=ToDoDao.getInstance();
	// To Do List 얻어오기
	List<ToDoDto> list=dao.getList();
%>
<div class="container">
	<h1>Winnie's To Do List</h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>No.</th>
				<th>Content</th>
				<th>Date</th>
				<th>Update this Content</th>
				<th>Delete this Content</th>
			</tr>
		</thead>
		<tbody>
		<%for(ToDoDto tmp: list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getContent() %></td>
				<td><%=tmp.getRegdate() %></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">Update this assignment</a></td>
				<td><a href="delete.jsp?num=<%=tmp.getNum() %>">Delete this assignment</a></td>
			</tr>
		<%} %>	
		</tbody>
	</table>
	<!-- 상대경로 (비추) -->
	<!-- 	<h3><a href="insertform.jsp">Add a to do list...</a></h3> 	-->	
	<!-- 절대경로 (추천) -->	
	<h3><a href="${pageContext.request.contextPath }/todo/insertform.jsp">Add an assignment...</a></h3>
</div>
</body>
</html>