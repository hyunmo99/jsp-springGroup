<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<jsp:include page="/include/bs5.jsp" />
  <title>boardList.jsp</title>
  <script>
  	'use strict'
	  function pageSizeCheck() {
			let pageSize = $("#pageSize").val();
			let pag = "${pag}";
			window.location.href="BoardList.bo?pag="+pag+"&pageSize="+pageSize;
	  }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<table class="table table-borderless m-0 p-0">
		<tr>
			<td colspan="2"><h2 class="text-center mb-3">게시판 리스트</h2></td>
		</tr> 
		<tr>
			<td><a href="BoardInput.bo" class="btn btn-success btn-sm">글쓰기</a></td>
			<td class="text-end">
				<select name="pageSize" id="pageSize" class="form-select form-select-sm" onchange="pageSizeCheck()"> 
					<option value="5" <c:if test="${pageSize==5}">selected</c:if>>5개</option>
					<option value="10" <c:if test="${pageSize==10}">selected</c:if>>10개</option>
					<option value="15" <c:if test="${pageSize==15}">selected</c:if>>15개</option>
				</select>
			</td>
		</tr>
	</table>
	<table class="table table-hover text-center">
		<tr class="table-secondary">
			<th>번호</th>
			<th>글제목</th>
			<th>글쓴이</th>
			<th>올린날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="vo" items="${vos}" varStatus="st">
			<tr class="">
				<td>${curScrStartNo}</td>
				<td class="text-start">${vo.title}</td>
				<td>${vo.nickName}</td>
				<td>${vo.wDate}</td>
				<td>${vo.readNum}</td>
				<c:set var="curScrStartNo" value="${curScrStartNo-1}"/>
			</tr>							
		</c:forEach>
	</table>
<!-- 블록페이지 시작 -->

	<div class="text-center">
		<ul class="pagination justify-content-center ">
		  <c:if test="${pag > 1}">
		  	<li class="page-item"><a href="BoardList.bo?pag=1&pageSize=${pageSize}" class="page-link">첫페이지</a></li>
		  </c:if>
		  <c:if test="${curBlock > 0}">
		  	<li class="page-item"><a href="BoardList.bo?pag=${(curBlock-1)*blockSize + 1}&pageSize=${pageSize}" class="page-link">이전블록</a><li class="page-item">
		  </c:if>
		  <c:forEach var="i" begin="${(curBlock*blockSize)+1}" end="${(curBlock*blockSize)+blockSize}" varStatus="st">
		  	<c:if test="${i <= totPage && i == pag}">
		  		<li class="page-item"><a href="BoardList.bo?pag=${i}&pageSize=${pageSize}" class="page-link"><font color="red"><b>${i}</b></font></a></li>
		  	</c:if>
		  	<c:if test="${i <= totPage && i != pag}">
		  		<li class="page-item"><a href="BoardList.bo?pag=${i}&pageSize=${pageSize}" class="page-link">${i}</a></li>
		  	</c:if>
		  </c:forEach>
		  <c:if test="${curBlock < lastBlock}">
		  	<li class="page-item"><a href="BoardList.bo?pag=${(curBlock+1)*blockSize + 1}&pageSize=${pageSize}" class="page-link">다음블록</a></li>
		  </c:if>
		  <c:if test="${pag < totPage}">
		  	<li class="page-item"><a href="BoardList.bo?pag=${totPage}&pageSize=${pageSize}" class="page-link">마지막페이지</a></li>
		  </c:if>
		</ul>
	</div>
<!-- 블록페이지 끝 -->	
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>