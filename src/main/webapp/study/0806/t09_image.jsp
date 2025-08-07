<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>t09_image.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>정적리소스(그림, css, js)</h2>
  <p>JSP소스코드와는 별도로 webapp폴더 아래 독립적으로 폴더를 만들어서 관리한다.</p>
  </hr>
  <div>
  	<p>1.<img src="2.jps" width="150"></p>
  	<p>2. <img src="../../images/2.jpg" width="150"></p>
  	<p>3. <img src="/images/3.jpg" width="150"></p>
  	<p>4. <img src="/springGroup/images/3.jpg" width="150"></p>
  	<p>5. <img src="/<%=request.getContextPath()%>/images/5.jpg" width="150">(X)</p>
  	<p>6. <img src="<%=request.getContextPath()%>/images/5.jpg" width="150">(O)</p>
		<hr/>
		<p>
			<% 
				for(int i=1; i<=7; i++) {
					out.println("<div>"+i+"<img src='"+request.getContextPath()+"/images/"+i+".jpg' width='150px' /></div>");
				}
			%>
		</p>
		  
  </div>
</div>
<p><br/></p>
</body>
</html>