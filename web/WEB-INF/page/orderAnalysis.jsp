<%--
  Created by IntelliJ IDEA.
  User: Mr.Su
  Date: 2019/2/13
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/img/favicon.png">

    <title>订单分析</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/dashboard.css" rel="stylesheet">
    <style type="text/css">/* Chart.js */
    @-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}
    @keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}
    .chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}
    body,.navbar-brand{
        font-size: 1.1em;
    }
    .form-control{
        height: 50.5px;
    }
    button,.list-group,p{
        padding: 0px;
        margin: 0px;
        text-align: center;
        outline:none;
    }

    .list-group > .list-group-item {/*菜单栏的标题栏*/
        background-color: #dc3545;
        font-size: large;
        /*width: 150px;*/
        color: white;
        height: 50px;
        /*margin-left: 10px;*/
        vertical-align:middle;/*文字上下居中*/
        border-radius: 0px;
    }
    .h2{
        font-size: 20px;
        font-family: "Eras Bold ITC";
    }
    .chartjs{
        height: 400px !important;
        width: 1000px !important;
        display: block;
    }
    </style>
    <script src="/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#collapseThree').collapse({
                toggle: false
            })});
    </script>
</head>

<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">马钢物流-订单分析</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="http://localhost:8080/loginIndex">首页</a>
        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="list-group">
                <button type="button" id="title-button1" class="list-group-item list-group-item-action" href="#collapse"  data-toggle="collapse">
                    库存管理
                </button>
                <p id="collapse"  class="collapsing">
                    <button type="button" class="list-group-item list-group-item-action">库存盘点</button>
                    <button type="button" class="list-group-item list-group-item-action">出库管理</button>
                    <button type="button" class="list-group-item list-group-item-action">入库管理</button>
                    <button type="button" class="list-group-item list-group-item-action">物流监管</button>
                </p>
            </div>
            <div class="list-group">
                <button type="button" id="title-button2" class="list-group-item list-group-item-action " href="#collapse1"  data-toggle="collapse">
                    订单管理
                </button>
                <p id="collapse1">
                    <button type="button" class="list-group-item list-group-item-action">调单调度</button>
                    <button type="button" class="list-group-item list-group-item-action active" onclick=window.open('http://localhost:8080/order/analysis')>订单分析</button>
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/order/handle')>订单处理</button>
                    <button type="button" class="list-group-item list-group-item-action">账户流水</button>
                </p>
            </div>
            <div class="list-group">
                <button type="button" id="title-button3" class="list-group-item list-group-item-action " href="#collapse2"  data-toggle="collapse">
                    人员信息
                </button>
                <p id="collapse2" class="collapsing">
                    <button type="button" class="list-group-item list-group-item-action">仓库人员信息管理</button>
                    <button type="button" class="list-group-item list-group-item-action">承运商管理</button>
                    <button type="button" class="list-group-item list-group-item-action">用户信息管理</button>
                    <button type="button" class="list-group-item list-group-item-action">管理员信息管理</button>
                </p>
            </div>
            <div class="list-group">
                <button type="button" id="title-button4" class="list-group-item list-group-item-action " href="#collapse3"  data-toggle="collapse">
                    车辆调度
                </button>
                <p id="collapse3">
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/car/track')>货物跟踪</button>
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/car/match')>车货匹配</button>
                </p>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>

            <h2 class="h2">周订单量变化曲线</h2><hr>
            <canvas id="chartjs-0" class="chartjs" ></canvas><br>

            <h2 class="h2">周订单量分类统计</h2><hr>
            <canvas id="chartjs-1" class="chartjs" ></canvas><br>

            <h2 class="h2">周订单量TOP10商家</h2><hr>
            <canvas id="chartjs-2" class="chartjs" ></canvas><br>

            <h2 class="h2">订单量TOP10商家采购种类统计</h2><hr>
            <canvas id="chartjs-3" class="chartjs"></canvas>


        </main>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/js/jquery-slim.min.js"><\/script>')</script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace()
</script>


<!-- Graphs -->
<script src="/js/Chart.js"></script>
<script>
    new Chart(
        document.getElementById("chartjs-0"),
        {"type":"line",
            "data":{"labels":["周日","周一","周二","周三","周四","周五","周六"],
                "datasets":[{
                    "label":"本周订单量变化曲线",
                    "data":[54,98,80,56,45,79,63],
                    "fill":false,
                    "borderColor":"#007bff", //线条颜色
                    "lineTension":0.1, //线条张力
                    "borderWidth":3, //线条颜色
                    "pointStrokeColor":"#007bff",
                    "backgroundColor": "#007bff"
                }]},
            "options":{
                "legend": {
                    labels: {
                        // fontColor: 'black',
                        // fontSize: 17
                    }},
                "scales":{
                    "yAxes":[{
                        "ticks":{"beginAtZero":true},
                        "scaleLabel":{
                            display:true,
                            labelString:'钢材质量(/ton)'
                        }
                    }],"xAxes":[{
                        // "ticks":{"beginAtZero":true},
                        "scaleLabel":{
                            display:true,
                            labelString:''
                        }
                    }]
                }
            }
        });

    new Chart(
        document.getElementById("chartjs-1"),
        {"type":"polarArea",
            "data":{
                "labels":["建筑用钢","造船用钢","锅炉用钢","生活用钢","桥梁用钢"],
                "datasets":[{
                    "label":"本周订单种类",
                    "data":[11,16,7,3,14],
                    "backgroundColor":["rgb(255, 99, 132,0.5)",
                        "rgb(75, 192, 192,0.5)","rgb(255, 205, 86,0.5)",
                        "rgb(201, 203, 207,0.5)",
                        "rgb(54, 162, 235,0.5)"
                    ]}
                ]}
        });

    new Chart(
        document.getElementById("chartjs-2"),
        {"type":"bar",
            "data":{"labels":['江西蓝月',"安徽唐朝","湖北上渡","江淮汽车","恒天重工","建筑7院","陕西丰田","鞠伟汽车","辽宁船业","珠江啤酒"],
                "datasets":[{"label":"本月订单量","data":[150,108,99,81,75,65,50,49,43,30],
                    "fill":false,
                    "backgroundColor":["rgba(255, 99, 132, 0.2)",
                        "rgba(255, 159, 64, 0.2)",
                        "rgba(255, 205, 86, 0.2)",
                        "rgba(75, 192, 192, 0.2)",
                        "rgba(54, 162, 235, 0.2)",
                        "rgba(153, 102, 165, 0.2)",
                        "rgba(163, 72, 125, 0.2)",
                        "rgba(133, 102, 205, 0.2)",
                        "rgba(153, 167, 255, 0.2)",
                        "rgba(201, 203, 207, 0.2)"],
                    "borderColor":["rgb(255, 99, 132)",
                        "rgb(255, 159, 64)",
                        "rgb(255, 205, 86)",
                        "rgb(75, 192, 192)",
                        "rgb(54, 162, 235)",
                        "rgb(153, 102, 165)",
                        "rgba(163, 72, 125)",
                        "rgb(133, 102, 205)",
                        "rgb(153, 167, 255)",
                        "rgb(201, 203, 207)"],
                    "borderWidth":1}]},
            "options":{
                  "scales":{
                      "yAxes":[{
                          "ticks":{"beginAtZero":true},
                          "scaleLabel":{
                              display:true,
                              labelString:'钢材质量(/ton)'
                          }
                      }],"xAxes":[{
                          // "ticks":{"beginAtZero":true},
                          "scaleLabel":{
                              display:true,
                              labelString:'商家名称'
                          }
                      }]
                  },
        }
        });
</script>
<script>
    var config = {
        type: 'line',
        data: {
            labels: ['建筑用钢', '船舶用钢', '锅炉用钢', '桥梁用钢', '生活用钢', '抗震用钢', '机械用钢'],
            datasets: [{
                label: '江西蓝月',
                data: [11,56,45,3,14,98,56],
                backgroundColor: '#1E90FF',
                borderColor: '#1E90FF',
                fill: false,
                borderDash: [3, 3],
                pointRadius: 15,
                pointHoverRadius: 10,
            }, {
                label: '江淮汽车',
                data: [71,2,45,76,19,0,43],
                backgroundColor: '#7FFF00',
                borderColor: '#7FFF00',
                fill: false,
                borderDash: [5, 5],
                pointRadius: [2, 4, 6, 18, 0, 12, 20],
            }, {
                label: '恒天重工',
                data: [1,89,23,3,109,9,23],
                backgroundColor: '#FF1493',
                borderColor: '#FF1493',
                fill: false,
                pointHoverRadius: 30,
            }, {
                label: '陕西丰田',
                data: [45,21,76,34,78,6,90],
                backgroundColor: '#FF4500',
                borderColor: '#FF4500',
                fill: false,
                pointHitRadius: 20,
            }]
        },
        options: {
            responsive: true,
            legend: {
                position: 'bottom',
            },
            hover: {
                mode: 'index'
            },
            scales: {
                xAxes: [{
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: '商家名称'
                    }
                }],
                yAxes: [{
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: '钢铁质量(/ton)'
                    }
                }]
            },
            title: {
                display: true,
                text: '销量TOP10商家各类刚铁采购量'
            }
        }
    };

    window.onload = function() {
        var ctx = document.getElementById('chartjs-3').getContext('2d');
        window.myLine = new Chart(ctx, config);
    };
</script>

</body></html>