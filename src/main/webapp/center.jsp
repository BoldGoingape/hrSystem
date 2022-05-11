<%--
  Created by IntelliJ IDEA.
  User: VULCAN
  Date: 2022/5/9
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" href="css/common.css" type="text/css" />
    <title>中间框架页</title>
</head>

<body style="overflow:hidden;">
<table height="100%" cellspacing="0" style="table-layout:fixed">
    <tr>
        <td background="images/main_40.gif" style="width:3px;"></td>
        <td width="177" class="leftLine">
            <iframe name="I2" height="100%" width="177" border="0" frameborder="0" src="left.jsp"></iframe>
        </td>
        <td>
            <iframe name="I1" src="tab/tab.jsp" height="100%" width="100%" border="0" frameborder="0"></iframe>
        </td>
        <td background="images/main_42.gif" style="width:3px;"></td>
    </tr>
</table>
</body>
</html>
