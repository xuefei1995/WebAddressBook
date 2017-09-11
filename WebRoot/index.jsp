<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <title>查询所有联系人</title>
  </head>
  <body>
    <center><h3>Web通讯录</h3></center>
	<table border="1" align="center" width="800px">
	<tr>		
    	<th>编号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>邮箱</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="con" varStatus="varSta">
    <tr>
    	<td>${con.id }</td>
        <td>${con.name }</td>
        <td>${con.gender }</td>
        <td>${con.age }</td>
        <td>${con.email }</td>
        <td align="center"><a href="${pageContext.request.contextPath }/user_findById?user.id=${con.id}">修改</a>&nbsp;
        <a href="javascript:void(0)" onclick="delCon('${con.id}')">删除</a></td>
    </tr>
    </c:forEach>
    <tr>
    	<td colspan="6" align="center"><a href="${pageContext.request.contextPath }/addUser.jsp">【添加联系人】</a></td>
    </tr>
</table>
 <script type="text/javascript">
		function delCon(id){
		//1）提示用户是否继续删除
		if(window.confirm("是否继续删除，一旦删除不能恢复！")){
			//按了“确定”
			//发出删除请求
			var url = "${pageContext.request.contextPath}/user_delete?user.id="+id;
			window.location.href=url;
			}	
		}
 </script>
  </body>
</html>
