<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 등록하기</title>
</head>
<body>
<div align="center">
	<form method="post" action="/movie/insert">
		<table border="1" cellpadding="5">
			<tr>
				<th>제목</th>
				<td><input type="text" name="mi_name" id="mi_name"></td>
			</tr>
			<tr>
				<th>년도</th>
				<td><input type="number" name="mi_year" id="mi_year"></td>
			</tr>
			<tr>
				<th>국가</th>
				<td><input type="text" name="mi_national" id="mi_national"></td>
			</tr>
			<tr>
				<th>제작사</th>
				<td><input type="text" name="mi_vendor" id="mi_vendor"></td>
			</tr>
			<tr>
				<th>감독</th>
				<td><input type="text" name="mi_director" id="mi_director"></td>
			</tr>
		</table>
		<button>등록</button>
	</form>
</div>
</body>
</html>