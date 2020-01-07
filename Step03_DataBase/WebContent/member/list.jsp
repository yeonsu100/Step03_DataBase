<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/member/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	/* navbar가 상단에 고정되어 있기 때문에 제목 (List of Member)이 가려져 공간이 남는 문제 해결 */
	body{
		padding-top: 50px;
		}
</style>
</head>
<body>
<%
   	// MemberDao 객체의 참조값 얻어오기
   	MemberDao dao=MemberDao.getInstance();
   	// 회원목록 얻어오기
   	List<MemberDto> list=dao.getList();
%>
<!-- 네비게이션 바 생성 -->
<div class="navbar navbar-default navbar-fixed-top">		
		<!-- inverse : 검은색 / default : 회색  |  스크롤 했을때에도 네비게이션 바 위에 위치하도록 고정-->
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">HOME</a>	<!-- 최상위 경로(index 페이지)로 올라오겠다는 의미 -->
		<ul class="nav navbar-nav">
			<li class="active"><a href="${pageContext.request.contextPath }/member/list.jsp">Member Page</a></li>
					<!-- active : 현재 보고있는 페이지임을 알수 있도록 버튼 활성화 -->
			<li><a href="https://www.youtube.com">YouTube</a></li>
			<li><a href="https://www.instagram.com/yunstagram_100/">Yunstagram</a></li>
		</ul>
	</div>
</div>
<div class="container">
	<!-- 현재 페이지의 위치를 좀 더 자세히 알려주는 breadcrumb (빵 부스러기) - depth를 추가하여 알도록 할 수 있다 -->
	<ol class="breadcrumb">
		<li><a href="list.jsp">List</a></li>
	</ol>
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
		<%for(MemberDto tmp: list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">UPDATE</a></td>
				<td><a href="delete.jsp?num=<%=tmp.getNum() %>">DELETE</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
	<a href="insertform.jsp">Add a member</a>
</div>
</body>
</html>