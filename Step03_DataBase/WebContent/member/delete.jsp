<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	// 파라미터로 전달되는 삭제할 회원의 번호
	int num=Integer.parseInt(request.getParameter("num"));
	
	// DB에서 삭제한 다음
	MemberDao dao=MemberDao.getInstance();
	dao.delete(num);
	
	// 응답하기
	
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/member/delete.jsp</title>
</head>
<body>
<script>
	alert("No.<%=num %> was deleted successfull.");
</script>
</body>
</html>