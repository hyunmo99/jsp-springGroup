<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
	<jsp:include page="/include/bs5.jsp" />
  <title>loginJoin.jsp</title>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원가입</h2>
  <form name="myform" method="post" action="/j0806/T05">
  	<div class="mb-3">아이디
  		<input type="text" id="mid" name="mid" class="form-control" autofocus required />
  	</div>
  	<div class="mb-3">비밀번호
  		<input type="password" id="pwd"name="pwd" class="form-control" required />
  	</div>
  	<div class="mb-3">닉네임
  		<input type="text" id="nickName"name="nickName" value="" class="form-control" required />
  	</div>
  	<div class="mb-3">이름
  		<input type="number" id="name"name="name" value="" class="form-control" required />
  	</div>
  	<div class="mb-3">나이
  		<input type="number" id="age"name="age" value="" class="form-control" required />
  	</div>
  	 <div class="mb-3">
        <label class="me-3">성별</label>
        <div class="form-check form-check-inline">
          <input type="radio" id="gender1" name="gender" value="남자" class="form-check-input" required />
          남자
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" id="gender2" name="gender" value="여자" class="form-check-input" required />
          여자
        </div>
      </div>
  	<div class="mb-3">주소
  		<input type="number" id="age"name="age" value="" class="form-control" required />
  	</div>
  	<div class="mb-3">
  		<input type="submit" value="전송(submit)" class="btn btn-success form-control" />
  	</div>
  </form>
</div>
<p><br/></p>
</body>
</html>