<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cart</title>
</head>
<body>
	<h2>カートの内容を確認</h2>
	<c:if test="${list != null }">
		<table border="1">
			<tr>
				<th>商品id</th><th>商品コード</th><th>商品名</th><th>カテゴリ</th><th>価格</th><th></th><th></th>
			</tr>
			
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td><td>${item.code}</td><td>${item.name}</td><td>${item.category}</td><td>${item.price}</td>
					<td>
						<form action="ManageServlet" method="get">
							<button name="btn" value="edit">変更</button>
							<input type="hidden" name="code" value="${item.code}">
						</form>
					</td>
					<td>
						<form action="ManageServlet" method="get">
							<button name="btn" value="delete">削除</button>
							<input type="hidden" name="code" value="${item.code}">
						</form>
					</td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
	<a href="http://localhost:8080/webExam2/ManageServlet">管理ページに戻る</a>
</body>
</html>