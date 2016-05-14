<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示全表</title>
</head>
<body>
	<table>
		<tr>
			<td>序号</td>
			<td>姓名</td>
			<td>年龄</td>
			<td>修改</td>
			<td>删除</td>
		</tr>
		<c:forEach items="${plist}" var="person" >
			<tr>
				<td>${person.id }</td>
				<td>${person.name }</td>
				<td>${person.age }</td>
				<td><a href= "queryById/${person.id}">修改</a></td>
				<td><a href= "delete/${person.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>