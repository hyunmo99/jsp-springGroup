<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <title>main2.jsp</title>
  <jsp:include page="/include/bs5.jsp" />
</head>
<body>
<p><br/></p>
<div class="container text-center">
  <h1>안녕하세요 길동이네 집에 오신것을 환영합니다.</h1>
  
  <div>
  	<img alt="" src="images/3.jpg" width="300px">
  </div>
  <hr/>
  <p>
  	<a href="${ctp}/study2/TestMenu" class="btn btn-success">Test</a>
  </p>
</div>
<p><br/></p>
</body>
</html>