<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String mid = request.getParameter("mid");
	String pwd = request.getParameter("pwd");
	String buseo = request.getParameter("buseo");
%>
<!DOCTYPE html>
<html>
<head>
  <title>t13Res.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>이곳은 t13Res.jsp</h2>
  
 <!--  <p><a href="t13.jsp" class="btn btn-success">돌아가기</a></p> -->

 <% if(buseo.equals("1")) {%> 
 			<jsp:forward page="t13Insa.jsp">
 			<jsp:param value="<%=mid %>" name="mid"/>
 			</jsp:forward>
 <%}else if(buseo.equals("2")) {%> 
 			<jsp:forward page="t13Yung.jsp">
 			<jsp:param value="<%=mid %>" name="mid"/>
 			</jsp:forward>
 <%}else if(buseo.equals("3")) {%> 
 			<jsp:forward page="t13Chong.jsp">
 			<jsp:param value="<%=mid %>" name="mid"/>
 			</jsp:forward>
 	<%}%>	
 </div>
<p><br/></p>
</body>
</html>