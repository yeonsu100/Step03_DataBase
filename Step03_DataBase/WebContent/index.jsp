<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	body{
		padding-top: 50px;
		}
</style>
</head>
<body>
<!-- 네비게이션 바 생성 -->
<div class="navbar navbar-inverse navbar-fixed-top">		<!-- inverse(검은색) 대신 default를 입력하면 회색 -->
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">HOME</a>	<!-- 최상위 경로(index 페이지)로 올라오겠다는 의미 -->
		<ul class="nav navbar-nav">
			<li class="active"><a href="${pageContext.request.contextPath }/member/list.jsp">Member Page</a></li>
			<li><a href="member/list.jsp">Path test</a></li>
			<li><a href="${pageContext.request.contextPath }/todo/list.jsp">To Do List</a></li>
			<li><a href="#">Memo</a></li>
			<li><a href="https://www.youtube.com">YouTube</a></li>
			<li><a href="https://www.instagram.com/yunstagram_100/">Yunstagram</a></li>
		</ul>
	</div>
</div>
<div class="container">
	<h1>INDEX PAGE</h1>
	<p>context path : ${pageContext.request.contextPath }</p>
	<ul>
		<li><a href="member/list.jsp">Show a member list (member table)</a></li>
	</ul>
	<script src="https://gist.github.com/yeonsu100/745beec3bdc6adecb51cc7fc9b4de830.js"></script>
	
</div>
</body>
</html>