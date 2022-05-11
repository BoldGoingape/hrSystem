<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
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
            get('column');
        });
        function get(lb) {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',          //放置图表的容器
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    defaultSeriesType: lb   //图表类型line, spline, area, areaspline,柱状： column, bar, pie , scatter
                },
                title: {
                    text: '2011年入职男女人数'
                },
                xAxis: {//X轴数据
                    categories: ['一月份', '二月份', '三月份', '四月份', '五月份', '六月份', '七月份', '八月份', '九月份', '十月份', '十一月份', '十二月份'],
                    labels: {
                        rotation: -45, //字体倾斜
                        align: 'right',
                        style: { font: 'normal 13px 宋体' }
                    },
                    lineColor: ['#fffddd']

                },
                yAxis: {//Y轴显示文字
                    title: {
                        text: '人数/个'
                    },
                    labels: { style: { font: 'normal 13px 宋体'} }
                    ,
                    lineColor: ['#fffddd']
                },
                tooltip: {
                    enabled: true,
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' + this.series.name + ': ' + Highcharts.numberFormat(this.y, 1) + "人";
                    }
                },
                plotOptions: {
                    column: {
                        dataLabels: {
                            enabled: true
                        },
                        enableMouseTracking: true//是否显示title
                    }
                },
                series: [{
                    name: '男职工',
                    data: [31, 30, 43, 23, 33, 41, 21, 11, 5, 66, 56, 53]
                }, {
                    name: '女职工',
                    data: [10, 25, 22, 18, 17, 23, 53, 40, 33, 25, 19, 22]
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
                            <input class="input_text" type="text" />
                        </td>
                        <td align=right>结束时间：</td>
                        <td>
                            <input class="input_text" type="text" />
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
