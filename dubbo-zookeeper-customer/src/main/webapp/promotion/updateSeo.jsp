<%--
  Created by IntelliJ IDEA.
  User: 季春阳
  Date: 2018/4/16
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    ${go}

   <%-- 类型:${go.name}--%>
    <form id="updateSeotable" method="post">
    <table border="1" cellpadding="0" width="300">
        <tr>

            <input type="hidden" name="id" value="${goa.id}"/>
            <input type="hidden" name="type" value="${goa.type}"/>

            <td>页面标题:</td>
            <td><input type="text" name="title" value="${goa.title}"></td>
        </tr>
        <tr>
            <td>页面关键词:</td>
            <td><input type="text" name="keywords" value="${goa.keywords}"></td>
        </tr>
        <tr>
            <td>页面描述:</td>
            <td><input type="text" name="description" value="${goa.description}"></td>
        </tr>
    </table>
    </form>

</body>
</html>
