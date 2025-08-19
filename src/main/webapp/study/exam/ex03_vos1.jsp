<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
	 성적자료를 폼을 통해서 입력받아 '총점/평균/학점/순위'를 구새서 출력하시오.
	 (동적폼을 만들어서 성적 자료를 여러개 입력받을 수 있도록처리)
 --%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
	<jsp:include page="/include/bs5.jsp" />
  <title>ex03_vos.jsp</title>
  <script>
		function addform() {
			const studentform= document.getElementById("studentform");
			const formNum = studentform.children.length+1;
			const form = "<div>학생"+formNum+"</div>";
			studentform.innerHTML += form ;
		}
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
	<form action="" name="myform" method="post">
		<div id="studentform"></div>
		
		<button type="button" class="btn btn-success">성적 처리</button>
		<button type="button" class="btn btn-primary" onclick="addform()" >학생 추가</button>
		
	</form>
  <div id="demo"></div>
</div>
<p><br/></p>
</body>
</html>