<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>加店员</title>
</head>
<body>
<s:form action="SysAdmin_addWaiter">
<s:textfield name="username" label="用户名"></s:textfield>
<s:textfield name="pw" label="密码"></s:textfield>
<s:textfield name="gender" label="性别"></s:textfield>
<s:textfield name="name" label="姓名"></s:textfield>
<s:textfield name="phone" label="手机号"></s:textfield>
<s:textfield name="type" label="类型"></s:textfield>
<s:textfield name="store_id" label="所属店铺"></s:textfield>
<s:submit value="添加"/>
</s:form>
</body>
</html>