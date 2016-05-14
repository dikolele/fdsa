<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页</title>
</head>
<body>
<form name="form1" id="form1" action="person/save" method="post">
	姓名：<input type="text" name="name" id="name"><br>
	年龄：<input type="text" name="age" id="age"><br>
	<input type="submit" value="提交">
	<input type="reset" value="重置">
<!-- 	<button type="submit" value="查询"> -->

</form>
<br><br><br>
<form name="form2" id="name2" action="person/queryByAge" method="post">
	请输入查询年龄：<input type="text" name="age" id="age"><br>
	<input type="submit" value="根据年龄查询">
	<input type="reset" value="重置">
</form>
<br><br><br>
<a href="person/query" >查询全表</a>
<!-- <a href="person/queryByAge" >根据年龄查询</a> -->
<a href="person/deleteByAge" >根据年龄删除</a>
<a href="person/deleteByAgeDiy" >根据年龄删除输入方式</a>

</body>
</html>