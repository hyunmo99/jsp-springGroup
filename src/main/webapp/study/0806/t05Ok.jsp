<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	//request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
%>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>t04Ok.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>회원가입</h2>
	<form name="myform" method="post" action="<%=request.getContextPath()  %>"></form>
	<hr/>

</div>
<p><br/></p>
</body>
</html>