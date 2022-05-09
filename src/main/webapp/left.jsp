<%--
  Created by IntelliJ IDEA.
  User: VULCAN
  Date: 2022/5/9
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <link rel="stylesheet" href="css/common.css" type="text/css" />
    <title>菜单页</title>
    <script src="js/common.js"></script>
</head>

<body style="overflow:hidden;">
<table class="menuTab">
    <tr>
        <td valign="top">
            <table>
                <tr>
                    <td height="26" background="images/main_21.gif"></td>
                </tr>
                <tr>
                    <td>
                        <table class="menuTabTitle" id="fuchild1" >
                            <tr>
                                <td onClick="expand(1)"><span class="STYLE5" >人员管理</span></td>
                            </tr>
                        </table>
                        <table class="menuTabTitleZi" align="center" id="child1">
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_44.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/tab.html')">人员信息管理</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_46.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/sstab.html')">个人信息查看</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_48.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/newInfo.html')">测试菜单</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_50.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/tab.html')">测试菜单</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_52.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/tab.html')">测试菜单</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>

                        <table class="menuTabTitle" id="fuchild2" >
                            <tr>
                                <td onClick="expand(2)"><span class="STYLE5" >待办事宜</span></td>
                            </tr>
                        </table>

                        <table class="menuTabTitleZi" align="center" id="child2">
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_44.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/tab.html')">信息审核</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_46.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/tab.html')">信息批准</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_46.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/tab.html')">已处理任务</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>

                        <table class="menuTabTitle" id="fuchild3" >
                            <tr>
                                <td onClick="expand(3)"><span class="STYLE5" >统计分析</span></td>
                            </tr>
                        </table>

                        <table class="menuTabTitleZi" align="center" id="child3">
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_50.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/Chart.htm')">员工性别统计</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="38">
                                    <table>
                                        <tr>
                                            <td class="menuTabTitleZiImg"><img src="images/main_52.gif" width="28" height="28"></td>
                                            <td width="99">
                                                <table>
                                                    <tr>
                                                        <td height="23" style="cursor:pointer;" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'" onClick="sub('tab/Chart1.htm')">员工入职统计</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
<script>
    //跳转
    function sub(url)
    {
        if(''!=url){
            window.top.frames['mainFrame'].frames['I1'].location=url;
        }

    }
</script>
</html>

