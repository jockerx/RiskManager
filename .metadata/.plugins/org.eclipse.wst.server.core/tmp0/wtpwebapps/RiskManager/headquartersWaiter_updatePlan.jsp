<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page 
	import="org.apache.struts2.ServletActionContext"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ page import="com.bean.ProductPlan"%>
<%
ProductPlan s = (ProductPlan) ServletActionContext.getRequest().getSession().getAttribute("productplan");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>更新计划</title>
</head>
<body>
<form action="updatePlan">
名称<input name="name" value="<%=s.getName()%>"/><br/>
店铺id<input name="store_id" value="<%=s.getStore_id()%>"/><br/>
销售数量<input name="num" value="<%=s.getNum()%>"/><br/>
单价<input name="price" value="<%=s.getPrice()%>"/><br/>
<input name="id" value="<%=s.getId()%>" style="display:none"/>
<button type="submit">添加</button>
</form>
</body>
</html>