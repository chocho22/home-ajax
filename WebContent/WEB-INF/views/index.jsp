<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<div align="center">
	<a href="/movie/list"><button>영화 리스트 가기</button></a>
	<a href="/views/movie/ajax_list"><button>AJAX 영화 리스트 가기</button></a><br><br>
<script>
	if(msg!=null) {
		alert('${msg}');
	}
</script>
<c:if test="${sessionScope.user==null}">
<form method="post" action="/user">
<table border="1">
	<tr>
		<th>아이디</th>
		<td><input type="text" name="ui_id" id="ui_id"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="ui_pwd" id="ui_pwd"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><button>로그인</button>
	</tr>
</table>
<input type="hidden" name="cmd" value="login">
</form>
<a href="/views/user/join"><button>회원가입</button></a>
</c:if>
<c:if test="${sessionScope.user!=null}">
<b>~~~${sessionScope.user.ui_name}님 반갑습니다~~~</b><br><br>
<form method="post" action="/user">
<input type="hidden" name="cmd" value="logout">
<button>로그아웃</button>
</form>
</c:if>
</div>
</body>
</html>