<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>修改联系人</title>
  </head>
  
  <body>
 <center><h3>修改联系人</h3></center>
 <form action="${pageContext.request.contextPath }/user_update" method="post">
 	<input type="hidden" name="user.id" value="${user.id }"/>
	<table border="1" align="center" width="210px">
	<tr>
    	<th>姓名</th>
        <td><input type="text" name="user.name" value="${user.name }"/></td>
    </tr>
    <tr>
    	<th>性别</th>
        <td>
        <input type="radio" name="user.gender" value="男"  <c:if test="${user.gender=='男' }">checked="checked"</c:if>  />男
        <input type="radio" name="user.gender" value="女"  <c:if test="${user.gender=='女' }">checked="checked"</c:if> />女
        </td>
    </tr>
    <tr>
    	<th>年龄</th>
        <td><input type="text" name="user.age" value="${user.age }"/></td>
    </tr>
    <tr>
    	<th>邮箱</th>
        <td><input type="text" name="user.email" value="${user.email }"/></td>
    </tr>
    <tr>
    	<td colspan="2" align="center"><input type="submit" value="修改"/></td>
    </tr>
</table>
</form>
  </body>
</html>