<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Cart.css">
<meta charset="utf-8">
<title>Cart</title>
</head>
<body>
	<div class="all">
		<h2>カートの内容を確認</h2>
	<c:if test="${cart != null }">
		<table border="1">
			<tr>
				<th>商品id</th><th>商品コード</th><th>商品名</th><th>カテゴリ</th><th>価格</th><th></th>
			</tr>
			
			<c:forEach  begin="0" var="item" items="${cart}" varStatus="status">
				<tr>
					<td>${item.id}</td><td>${item.code}</td><td>${item.name}</td><td>${item.category}</td><td>${item.price}</td>

					<td>
						<form action="CartManageServlet" method="get">
							<button name="btn" value="delete">削除</button>
							<input type="hidden" name="code" value="${status.index}">
						</form>
					</td>
			</tr>
			</c:forEach>
			<tr>
				<th></th><th></th><th><th></th><th>合計</th><th>${total}</th>
			</tr>
		</table>
	</c:if>
	
	
	<form action="ManageServlet" method="get">
		<button class="kaikei" name="btn" value="cache">お会計へ</button>
	</form>

	
	<a href="http://localhost:8080/webExam2/ManageServlet">管理ページに戻る</a>
	</div>
</body>
</html>