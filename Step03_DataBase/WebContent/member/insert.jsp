<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글 인코딩 설정
	request.setCharacterEncoding("utf-8");
	// 폼 전송되는 파라미터 추출
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	// MemberDto에 담아서
	MemberDto dto=new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	// MemberDao객체를 이용해서 DB에 저장
	MemberDao dao=MemberDao.getInstance();
	dao.insert(dto);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insert.jsp</title>
</head>
<body>
<p>Information of Member was Inserted.</p>
<a href="list.jsp">Show a member list</a>
</body>
</html>