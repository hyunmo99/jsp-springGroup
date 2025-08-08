<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String[] cards ={"국민", "BC", "LG", "현대", "삼성", "농협", "BC"};
	for(String card :cards) {
		out.println(card+" / ");
	}
	pageContext.setAttribute("cards", cards);
	
	
	String[][] members = {
			{"홍길동", "25", "서울"},
			{"김말숙", "33", "청주"},
			{"이기자", "19", "제주"},
			{"강감찬", "55", "광주"},
			{"김연아", "19", "서울"}
	};
	pageContext.setAttribute("members", members);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>ex02_jstl.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  
</div>
<p><br/></p>
</body>
</html>