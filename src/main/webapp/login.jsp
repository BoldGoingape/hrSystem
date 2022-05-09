
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" href="css/common.css" type="text/css" />
    <script src="js/jquery-1.5.2.min.js"></script>

    <title>软通动力人力资源自助管理系统</title>

    <script>


     function su() {
         <%--校验用户名--%>
         var UserName=document.getElementById("username").value;
         if (UserName == "") {
             alert("用户名不能为空");
         }

        //
        // a.href="/loginServlet";
        // document.body.appendChild(a);
        // a.click();
     }
    </script>
</head>

<body>

<table class="loginTab">
    <tr>
        <td class="loginTop"></td>
    </tr>
    <tr>
        <td height="608" background="images/login_03.gif">
            <table style="width:auto;" align="center">
                <tr>
                    <td height="266" background="images/login_04.gif"></td>
                </tr>
                <tr>
                    <td height="95">
                        <table>
                            <tr>
                                <td width="424" height="95" background="images/login_06.gif"></td>
                                <td width="183" background="images/login_07.gif">
                                    <form action="/loginServlet" method="post">
                                    <table>
                                        <tr height="30">
                                            <td width="21%"><span class="STYLE1">用户</span></td>
                                            <td width="79%"><input type="text" id="username" name="userName"></td>
                                        </tr>
                                        <tr height="30">
                                            <td><span class="STYLE1" >密码</span></td>
                                            <td><input type="password" name="textfield2"></td>
                                        </tr>
                                        <tr height="30">
                                            <td></td>
                                            <td><button style="margin: 0;padding: 0;border: 1px solid transparent;outline: none" >
                                                <img src="images/dl.gif" width="81" height="22" border="0"onclick="su()" >
                                            </button></td>
                                            <%--<img src="images/dl.gif" width="81" height="22" border="0" onclick="su()">--%>
                                        </tr>
                                    </table>
                                    </form>
                                </td>
                                <td width="255" background="images/login_08.gif"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="247" valign="top" background="images/login_09.gif">
                        <table>
                            <tr>
                                <td width="22%" height="30"></td>
                                <td width="56%"></td>
                                <td width="22%"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td height="30">
                                    <table>
                                        <tr>
                                            <td width="44%" height="20"></td>
                                            <td width="56%" class="STYLE1">版本 2012V1.0 </td>
                                        </tr>
                                    </table>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="loginBottom"></td>
    </tr>
</table>
</html>