<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" href="../css/edit.css" type="text/css" />
    <title>无标题文档</title>
    <script type="text/javascript" src="../js/jquery-1.5.2.min.js"></script>
    <script type="text/javascript" src="../js/highcharts.js"></script>
    <script type="text/javascript" src="../js/gray.js"></script>
    <script type="text/javascript">
        var chart;
        $(document).ready(function () {
            get1();
        });
        function get1() {
            chart1 = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    defaultSeriesType: 'pie'
                },
                colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655',
                    '#FFF263', '#6AF9C4'],
                title: {
                    text: '2011年入职人数'
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.point.name + '</b>: ' + this.y + '人';
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true, //点击切换
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: Highcharts.theme.textColor || '#000000',
                            connectorColor: Highcharts.theme.textColor || '#000000',
                            formatter: function () {
                                return '<b>' + this.point.name + '</b>: ' + this.y + '人';
                            }
                        },
                        showInLegend: true
                    }
                },
                series: [{
                    data: [
                        ['一月份', 31],
                        ['二月份', 30],
                        ['三月份', 43],
                        ['四月份', 23],
                        ['五月份', 33],
                        ['六月份', 41],
                        ['七月份', 21],
                        ['八月份', 11],
                        ['九月份', 5],
                        ['十月份', 66],
                        ['十一月份', 56],
                        ['十二月份', 53]
                    ]
                }]
            });
        }

    </script>
</head>

<body>
<!--上-->
<div class="editTopbg">
    <div class="editTop1"></div>
    <div class="editTop2">
        <div class="editTopTitleDiv"><div></div><span class="STYLE4">新增图表</span></div>
    </div>
    <div class="editTop3"></div>
    <div class="editTopBtnDiv">
        <div style="float:right;" class="editTopBtnDiv1">

        </div>
    </div>
</div>

<!--中-->
<div class="editCenterbg">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="tabLeft"></td>
            <td>
                <table style=" background-color:#fff; border:1px solid #8cc1e9">
                    <tr style=" height:35px;">
                        <td align=right>开始时间：</td>
                        <td>
                            <input  id="datepicker3" class="input_text" type="text" />
                        </td>
                        <td align=right>结束时间：</td>
                        <td>
                            <input  id="datepicker4" class="input_text" type="text" />
                        </td>

                        <td>
                            <a href="javascript:void(0)" class="btn" onclick="ShowPop('1','提交保存成功')"><span> 提 交 </span></a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7" style="padding:10px;">
                            <div id="container"></div>
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
</body>
</html>
