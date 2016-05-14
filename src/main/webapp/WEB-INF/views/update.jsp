<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新后页</title>
</head>
<body>
<table>
		<tr>
			<td>序号</td>
			<td>姓名</td>
			<td>年龄</td>
		</tr>
			<tr>
				<td>${person.id }</td>
				<td>${person.name }</td>
				<td>${person.age }</td>
			</tr>
	</table>
</body>
</html>