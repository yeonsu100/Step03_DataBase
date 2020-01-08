<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/step03_custom.css" />

<!-- jquery+bootstrap javascript 로딩 -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>
<!-- 네비게이션 바 생성 -->
<div class="navbar navbar-inverse navbar-fixed-top">		<!-- inverse(검은색) 대신 default를 입력하면 회색 -->
	<div class="container">
	<!-- 홈페이지(인덱스) 링크와 버튼을 넣어둘 div -->
	<div class="navbar-header">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">HOME</a>
									<!-- ▲ 최상위 경로(index 페이지)로 올라오겠다는 의미 -->
		<button class="navbar-toggle"
				data-toggle="collapse"
				data-target="#one">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	<!-- xs 영역에서는 숨겨졌다가 버튼을 누르면 나오게 할 컨텐츠를 넣을 div -->
	<div class="collapse navbar-collapse" id="one">
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
</div>
<div class="container">
	<h1>INDEX PAGE</h1>
	<p>context path : ${pageContext.request.contextPath }</p>
	<ul>
		<li><a href="member/list.jsp">Show a member list (member table)</a></li>
		<li><a href="todo/list.jsp">Show a to do list (schedule table)</a></li>
	</ul>
	<script src="https://gist.github.com/yeonsu100/745beec3bdc6adecb51cc7fc9b4de830.js"></script>
</div>

    <!----------- Footer ------------>
    <%-- 
    	[ /include/footer.jsp를 포함시키기 ]
    	 - page="포함시킬 jsp 페이지의 상대경로" 
    	 - 절대경로는 동작하지 않는다. (무조건 상대경로로 작성해야 한다)
    	 - jsp 페이지만 가능하다.
    	 - 포함시킨 jsp 페이지와 포함된 jsp 페이지가 공동 응답하는 구조로 클라이언트에게 응답하는 원리이다.	
    --%>
<jsp:include page="include/footer.jsp"></jsp:include>

</body>
</html>