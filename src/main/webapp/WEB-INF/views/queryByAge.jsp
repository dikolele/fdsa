<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>根据年龄查询</title>
</head>
<body>

	<table>
	
	
		<tr>
			<td>年龄</td>
			<td>序号</td>
			<td>姓名</td>
			
		</tr>
		<c:forEach items="${plist}" var="plist">
			<tr>
				<td>${plist.age }<td>
				<td>${plist.id }</td>
				<td>${plist.name }</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>