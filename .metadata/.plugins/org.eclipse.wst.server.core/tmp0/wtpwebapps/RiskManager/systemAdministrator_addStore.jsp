<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>加店铺</title>
</head>
<body>
<s:form action="SysAdmin_addStore">
<s:textfield name="name" label="名称"></s:textfield>
<s:textfield name="telephone" label="座机号"></s:textfield>
<s:textfield name="type" label="类型"></s:textfield>
<s:textfield name="address" label="地址"></s:textfield>
<s:submit value="添加"/>
</s:form>
</body>
</html>