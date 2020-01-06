<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
</head>
<body>
<h2>Form of Membership</h2>
<form action="insert.jsp" method="post">
		<!-- 입력한 내용이 서버에 전송되도록 하는 것이 목적이기 때문에 post 방식 요청-->
	<label for="name">NAME</label>
	<input type="text" name="name" id="name"/></br>
	<label for="addr">ADDRESS</label>
	<input type="text" name="addr" id="addr"/></br>
	<button type="submit">Submit</button>
	<button type="reset">Reset Form</button>
</form>
</body>
</html>