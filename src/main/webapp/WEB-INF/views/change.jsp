<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新后</title>
</head>
<body>
<form name="form1" id="form1" action="update/${person1.id}" method="post" >
	序号：${person1.id}<br>
	姓名：<input type="text" name="name" id="name" value="${person1.name}"><br>
	年龄：<input type="text" name="age" id="age" value="${person1.age}"><br>
	<input type="submit" value="更新">
	
</form>
</body>
</html>