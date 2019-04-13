<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 등록</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="5">
			<tr>
				<th>영화명</th>
				<td><input type="text" name="mi_name">
			</tr>
			<tr>
				<th>년도</th>
				<td><input type="text" name="mi_year">
			</tr>
			<tr>
				<th>국가</th>
				<td><input type="text" name="mi_national">
			</tr>
			<tr>
				<th>제작사</th>
				<td><input type="text" name="mi_vendor">
			</tr>
			<tr>
				<th>감독</th>
				<td><input type="text" name="mi_director">
			</tr>
			<tr>
				<td colspan="2" align="center"><button onclick="insertMovie()">등록</button>
			</tr>
		</table>
		<a href="/views/movie/ajax_list"><button>리스트로 돌아가기</button></a>
	</div>
	<script>
		function insertMovie() {
			var inputs = document.querySelectorAll('input[name]');
			var params = '';
			for (var i = 0; i < inputs.length; i++) {
				var input = inputs[i];
				params += input.name + '=' + input.value + '&';
			}
			console.log(params);
			var xhr = new XMLHttpRequest();
			xhr.open('POST', '/am/insert');
			xhr.setRequestHeader('Content-Type',
					'application/x-www-form-urlencoded');
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var result = JSON.parse(xhr.response);
					alert(result.msg);
					if (result.url) {
						location.href = result.url;
					}
				}
			}
			xhr.send(params);
		}
	</script>
</body>
</html>