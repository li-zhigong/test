<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>用户列表</h3>
<table>
	<tr>
		<th>编号</th>
		<th>姓名</th>
		<th>密码</th>
		<th>年龄</th>
		<th>操作</th>
	</tr>
	
	<c:forEach items="${users }" var="user">
		<tr>
			<td>${user.id }</td>
			<td>${user.name }</td>
			<td>${user.password }</td>
			<td>${user.age }</td>
			<td>
				<a onclick="deleteUser(${user.id})" href="javascript:void(0)">删除</a>&nbsp;&nbsp;
				<a href="#">修改</a>
			</td>
		</tr>
	</c:forEach>
</table>

<script type="text/javascript">
	
	function deleteUser(userId) {
		if(confirm("您确定要删除这条数据吗？")){
			window.location.href="${pageContext.request.contextPath}/user/delete.do?userId="+userId
		}
	}

</script>

</body>
</html>