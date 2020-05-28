<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="manageTopStyle.css">
<title>Regist</title>
</head>
<body>
	<P>${message}</P>
	<h2>新規会員登録</h2>
	<form action="Regist" method="post">
		<p>USER NAME</p>
		<input type="text" name="name">
		<p>PASSWORD</p>
		<input type="password" name="pass">
		<button>登録</button>
	
	</form>
</body>
</html>