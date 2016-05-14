<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自助根据年龄删除</title>
</head>
<body>
	<form name="form1" id="form1"  action=""  method="post">
		请输入要删除的年龄：<input type="text" name="1" id="1">	
		<input type="button" value="查询" >
	</form>
	
	<form name="form2" id="form2"  action=""  method="post">
	符合条件的名单：
	<table>
	<tr>
			<td>序号</td>
			<td>姓名</td>
			<td>删除</td>
		</tr>
		
			<c:forEach items="${plist}" var="person">
			<tr>
				<td>${person.id }</td>
				<td>${person.name }</td>
				<td><a herf="deleteByAgeDiy/${person.id}">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	</form>
</body>
</html>