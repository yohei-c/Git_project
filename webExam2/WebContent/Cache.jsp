<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cache</title>
</head>
<body>
	<form action="ConfirmServlet" method="get">
		<button>注文を確定する</button>
	</form>
	<c:if test="${cart != null }">
		<table border="1">
			<tr>
				<th>商品id</th><th>商品コード</th><th>商品名</th><th>カテゴリ</th><th>価格</th><th></th>
			</tr>
			
			<c:forEach  begin="0" var="item" items="${cart}" varStatus="status">
				<tr>
					<td>${item.id}</td><td>${item.code}</td><td>${item.name}</td><td>${item.category}</td><td>${item.price}</td>

				</tr>
			</c:forEach>
			 <tr>
				<th></th><th></th><th></th><th>合計</th><th>${total}</th><th></th>
			 </tr>
		</table>
	</c:if>	

	
</body>
</html>