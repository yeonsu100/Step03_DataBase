<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/member/insertform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<h2>Form of Membership</h2>
<form action="insert.jsp" method="post">
		<!-- 입력한 내용이 서버에 전송되도록 하는 것이 목적이기 때문에 post 방식 요청-->
	<div class="form-group">
	<label for="name">NAME</label>
	<input type="form-control" name="name" id="name"/></br>
	</div>
	<div class="form-group">
	<label for="addr">ADDRESS</label>
	<input type="form-control" name="addr" id="addr"/></br>
	</div>
	<button class="btn btn-primary" type="submit">Submit</button>
	<button class="btn btn-primary" type="reset">Reset Form</button>
</form>
</body>
</html>