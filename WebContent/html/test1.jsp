<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
var CommonFunc = function() {
	this.callFunc = function() {
		alert('함수입니다~~');
	}
}

var cf = new CommonFunc();
cf.callFunc();
</script>
</body>
</html>