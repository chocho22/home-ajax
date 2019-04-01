<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개봉 영화 리스트</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>년도</th>
			<th>국가</th>
			<th>제작사</th>
			<th>감독</th>
		</tr>
	<c:if test="${movieList==null}">
		<tr>
			<td colspan="6">등록된 개봉 영화가 없습니다.</td>
		</tr>
	</c:if>
	<c:forEach items="${movieList}" var="movie">
		<tr>
			<td>${movie.miNum}</td>
			<td>${movie.miName}</td>
			<td>${movie.miYear}</td>
			<td>${movie.miNational}</td>
			<td>${movie.miVendor}</td>
			<td>${movie.miDirector}</td>
		</tr>
	</c:forEach>
	</table>
	<c:if test="${sessionScope.user!=null}">
		<form method="post" action="/movie/insert">
			<button>영화 등록</button>
		</form>
	</c:if>
</body>
</html>