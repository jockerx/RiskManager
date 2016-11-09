<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>积分兑换为余额</title>
</head>
<body>
<s:form action="Member_pointsToCard">
<s:textfield name="points" label="用于兑换的积分"></s:textfield>
<s:submit value="确认激活"></s:submit>
</s:form>
</body>
</html>