<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String msgFlag = request.getParameter("msgFlag")==null ? "" : request.getParameter("msgFlag");
  String name = request.getParameter("name");
  int age = Integer.parseInt(request.getParameter("age"));
  String gender = request.getParameter("gender");
  String hobby = request.getParameter("hobby");
  String job = request.getParameter("job");
  String mountain = request.getParameter("mountain");
  String content = request.getParameter("content");
  String fileName = request.getParameter("fileName");
  
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>t08_member.jsp</title>
  <script>
    'use strict';
 	function home() {	
  		location.href='t08.jsp';
 	}
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>전송된 값</h2>
  <p>성명 :<%=name %></p>
  <hr/>
  <p>나이 :<%=age %></p>
  <hr/>
  <p>성별 :<%=gender %></p>
  <hr/>
  <p>취미 :<%=hobby %></p>
  <hr/>
  <p>직업 :<%=job %></p>
  <hr/>
  <p>산 :<%=mountain %></p>
  <hr/>
  <p>자기소개 :<%=content %></p>
  <hr/>
  <p>첨부파일 :<%=fileName %></p>
  <hr/>
  <p><a href="javascript:home()" class="btn btn-success">돌아가기</a>
</div>
<p><br/></p>
</body>
</html>