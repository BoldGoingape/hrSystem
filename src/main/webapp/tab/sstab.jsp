<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" href="../css/edit.css" type="text/css" />
    <title>工作人员管理</title>
    <script src="../js/common.js"></script>
    <script src="../js/jquery-1.5.2.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#but").click(function () {
                var bt = $(this);
                if (!$("#main_table").is(":hidden")) {
                    $("#main_table").hide();
                    $("#main_div").show();
                    bt.attr("src", "images/Plusbox.gif");
                }
                else {
                    $("#main_table").show();
                    $("#main_div").hide();
                    bt.attr("src", "images/Minusbox.gif");
                }
            });
        });
    </script>
</head>

<body>
<!--上-->
<div class="editTopbg">
    <div class="editTop1"></div>
    <div class="editTop2">
        <div class="editTopTitleDiv"><div></div><span class="STYLE4">个人信息管理</span></div>
    </div>
    <div class="editTop3"></div>
</div>

<!--中-->
<div class="editCenterbg">
    <table>
        <tr>
            <td class="tabLeft"></td>
            <td class="tabCenter">
                <fieldset title="基本信息浏览"><legend class="STYLE1"> <img src="images/Minusbox.gif" id="but" style=" cursor:pointer;" /> 基本信息浏览</legend>
                    <table class="input_table" id="main_table">
                        <TBODY style="DISPLAY: block">
                        <tr valign="top" class="input_table_ge">
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                            <td class="input_td_right">
                                <input type="radio" name="z1" value="1" id="z1_1" checked>测试数据1
                                <input type="radio" name="z1" value="2" id="z1_2">测试数据2
                                <input type="radio" name="z1" value="3" id="z1_3">测试数据3
                                <input type="radio" name="z1" value="4" id="z1_4">测试数据4
                            </td>
                        </tr>
                        <tr>
                            <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                            <td class="input_td_right">
                                <input class="input_text" style="width:350px;" type="text"/><span class="font7 m-left">（2-30个字）</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                            <td class="input_td_right">
                                <input class="input_text" type="text"/>
                            </td>
                        </tr>

                        <tr>
                            <td class="input_td_left"><span class="font6 m_right">*</span>测试数据</td>
                            <td class="input_td_right">
                                <textarea class="input_textarea" name="" cols="" rows="10"></textarea><br/>
                                <span class="font7">
                                    1、测试数据测试数据测试数据测试数据测试数据；<br/>
                                    2、测试数据测试数据测试数据测试数据；
                                </span>
                            </td>
                        </tr>

                        <tr>
                            <td class="input_td_left">测试数据</td>
                            <td valign="middle" class="input_td_right">测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据测试数据</span>
                            </td>
                        </tr>
                        <tr valign="top" class="input_table_ge">
                            <td colspan="2"></td>
                        </tr>
                        </TBODY>
                    </table>
                    <div style="height:10px; display:none" id="main_div"></div>
                </fieldset>
            </td>
            <td class="tabRight"></td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="tabLeft"></td>
            <td class="tabCenter">
                <ul id="tabs" style="margin-top:10px;">
                    <li id="current"><a href="#" title="tab1">工作履历浏览</a></li>
                    <li><a href="#" title="tab2">教育情况浏览</a></li>
                </ul>

                <div id="content">
                    <div id="tab1">
                        <table>
                            <tr><td align="right"><a href="javascript:void(0)" onclick="showid('popupContainer');"><img src="images/001.gif" width="14" height="14" /> <span>新增</span></a> &nbsp;</td></tr>
                        </table>
                        <table style="width:100%;" class="tabList" align="center" onmouseover="changeto()"  onmouseout="changeback()">
                            <tr>
                                <th width="8%" >序号</th>
                                <th width="24%" >运行机器ip地址</th>
                                <th width="10%" >机器名</th>
                                <th width="14%" >节点类型</th>
                                <th width="24%" >服务器进程配置</th>
                                <th width="7%" >编辑</th>
                            </tr>
                            <tr align="center">
                                <td>A0012</td>
                                <td>192.168.0.124</td>
                                <td>wtz_fh</td>
                                <td>DBserver</td>
                                <td><a href="#">服务器进程配置</a></td>
                                <td><img src="images/037.gif" width="9" height="9" /> [<a href="#">编辑</a>]</td>
                            </tr>
                            <tr align="center">
                                <td>A0012</td>
                                <td>192.168.0.124</td>
                                <td>wtz_fh</td>
                                <td>DBserver</td>
                                <td><a href="#">服务器进程配置</a></td>
                                <td><img src="images/037.gif" width="9" height="9" /> [<a href="#">编辑</a>]</td>
                            </tr>
                            <tr align="center">
                                <td>A0012</td>
                                <td>192.168.0.124</td>
                                <td>wtz_fh</td>
                                <td>DBserver</td>
                                <td><a href="#">服务器进程配置</a></td>
                                <td><img src="images/037.gif" width="9" height="9" /> [<a href="#">编辑</a>]</td>
                            </tr>
                        </table>
                    </div>
                    <div id="tab2"  style="display:none">
                        <table>
                            <tr><td align="right"><a href="javascript:void(0)" onclick="showid('popupContainer');"><img src="images/001.gif" width="14" height="14" /> <span>新增</span></a> &nbsp;</td></tr>
                        </table>
                        <table style="width:100%;" class="tabList" align="center" onmouseover="changeto()"  onmouseout="changeback()">
                            <tr>
                                <th width="8%" >序号</th>
                                <th width="24%" >运行机器ip地址</th>
                                <th width="10%" >机器名</th>
                                <th width="14%" >节点类型</th>
                                <th width="24%" >服务器进程配置</th>
                                <th width="7%" >编辑</th>
                            </tr>
                            <tr align="center">
                                <td>A0012</td>
                                <td>192.168.0.124</td>
                                <td>wtz_fh</td>
                                <td>DBserver</td>
                                <td><a href="#">服务器进程配置</a></td>
                                <td><img src="images/037.gif" width="9" height="9" /> [<a href="#">编辑</a>]</td>
                            </tr>
                            <tr align="center">
                                <td>A0012</td>
                                <td>192.168.0.124</td>
                                <td>wtz_fh</td>
                                <td>DBserver</td>
                                <td><a href="#">服务器进程配置</a></td>
                                <td><img src="images/037.gif" width="9" height="9" /> [<a href="#">编辑</a>]</td>
                            </tr>
                            <tr align="center">
                                <td>A0012</td>
                                <td>192.168.0.124</td>
                                <td>wtz_fh</td>
                                <td>DBserver</td>
                                <td><a href="#">服务器进程配置</a></td>
                                <td><img src="images/037.gif" width="9" height="9" /> [<a href="#">编辑</a>]</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
            <td class="tabRight"></td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="tabLeft"></td>
            <td class="tabCenter">
                <table align="center">
                    <tr>
                        <td width="40%"></td>
                        <td style="padding:10px 5px;">
                            <a href="javascript:void(0)" class="btn" onclick="showid('popupContainer');"><span> 提 交 </span></a>
                            <a href="tab.html" class="btn"><span> 返 回 </span></a>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="tabRight"></td>
        </tr>
    </table>
</div>
<!--下-->
<div class="editDownbg">
    <div class="editDown1"></div>
    <div class="editDown2"></div>
    <div class="editDown3"></div>
</div>
<div id="popupContainer" style="display:none;" class="zzc">
    <div class="popup">
        <div class="shadow"></div>
        <div class="main">
            <div class="head">
                <div class="titleAlert"></div>
                <div class="tail">
                    <div class="closeIcon" onclick="closeDiv('popupContainer')"></div>
                </div>
            </div>

            <div class="body">
                <div class="iconSuccess"></div>
                <div class="element">
                    <table>
                        <tr>
                            <td class="elementEntity">
                                <div class="title">确定提交保存数据么?</div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="buttons">
                    <input type="button" class="button" value="确定" onclick="showaa('popupContainer')"/>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="http://code.jquery.com/jquery-1.6.3.min.js"></script>
<script>
    $(document).ready(function() {

        $('#tabs a').click(function(e) {
            e.preventDefault();
            $("#content div").hide(); //Hide all content
            $("#tabs li").attr("id",""); //Reset id's
            $(this).parent().attr("id","current"); // Activate this
            $('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
        });
    });
</script>
</body>
</html>
