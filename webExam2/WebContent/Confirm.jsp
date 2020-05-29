<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="ConfirmStyle.css">
<meta charset="utf-8">
<title>Confirm</title>
</head>
<body>

	<div>
		<h1>${message}</h1>

	
		<form action="ManageServlet" method="get">
			<button>商品管理に戻る</button>
		</form>
	</div>
</body>
</html>