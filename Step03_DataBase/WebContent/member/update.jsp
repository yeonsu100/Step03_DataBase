<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
<%
	// 폼 전송되는 한글 깨지지 않도록 
	request.setCharacterEncoding("utf-8");
	// 폼 전송되는 수정할 회원의 정보를 읽어온다. 
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	// MemberDao 객체를 이용해서 DB 에 수정반영
	MemberDto dto=new MemberDto(num, name, addr);
	MemberDao dao=MemberDao.getInstance();
	dao.update(dto);
	// 응답하기 
%>
<p> <strong><%=num %></strong> </p>
<a href="list.jsp">Show a member list</a>
</body>
</html>