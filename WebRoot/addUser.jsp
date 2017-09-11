<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>    
    <title>添加联系人</title>
  </head>
  <body>
   <center><h3>添加联系人</h3></center>
<form action="${pageContext.request.contextPath }/user_save" method="post">
	<table border="1" align="center" width="210px">
	<tr>
    	<th>姓名</th>
        <td><input type="text" name="user.name"/></td>
    </tr>
    <tr>
    	<th>性别</th>
        <td>
        <input type="radio" name="user.gender" value="男"/>男
        <input type="radio" name="user.gender" value="女"/>女
        </td>
    </tr>
    <tr>
    	<th>年龄</th>
        <td><input type="text" name="user.age"/></td>
    </tr>
    <tr>
    	<th>邮箱</th>
        <td><input type="text" name="user.email"/></td>
    </tr>
    <tr>
    	<td colspan="2" align="center"><input type="submit" value="添加"/></td>
    </tr>
</table>
</form>
  </body>
</html>
