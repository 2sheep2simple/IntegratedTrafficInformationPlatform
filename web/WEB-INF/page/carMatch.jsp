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
    <link rel="icon" href="/img/favicon.png">
    <title>车辆匹配</title>
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery.min.js"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link href="/css/user-defined.css" rel="stylesheet">
    <link href="/css/panel.css" rel="stylesheet">
    <script src=/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/vue.min.js"></script>
    <style type="text/css">/* Chart.js */
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
     .col > .form-control{
         height: 40px;
         margin-bottom: 3px;
     }

    #later > div > div{
        padding-left: 0px;
    }

    </style>
    <script type="text/javascript">
        $(function () {
            $('#collapseThree').collapse({
                toggle: false
            })
        });
    </script>
</head>

<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">马钢物流-车货匹配</a>
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
                <p id="collapse1" >
                    <button type="button" class="list-group-item list-group-item-action">调单调度</button>
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/order/analysis')>订单分析</button>
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/order/handle')>订单处理</button>
                    <button type="button" class="list-group-item list-group-item-action">账户流水</button>
                </p>
            </div>
            <div class="list-group">
                <button type="button" id="title-button3" class="list-group-item list-group-item-action " href="#collapse2"  data-toggle="collapse">
                    人员信息
                </button>
                <p id="collapse2"  class="collapsing">
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
                    <button type="button" class="list-group-item list-group-item-action active">车货匹配</button>
                </p>
            </div>
        </nav>

        <main id="app" role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h6 class="panel-title">司机录入</h6>
                </div>
                <div class="panel-body">
                    <form class="was-validated">
                    <div class="row">
                        <div class="col">
                            <input v-model="driverName" type="text" class="form-control" placeholder="司机姓名" required>
                        </div>
                        <div class="col" required>
                            <select v-model="driverCompany" class="custom-select" style="font-size:16px;color:#6c757d" required>
                                <option value="" >请选择所在物流公司</option>
                                <option value="马钢物流">马钢物流</option>
                                <option value="顺丰物流">顺丰物流</option>
                                <option value="京东物流">京东物流</option>
                            </select>
                        </div>
                        <div class="col">
                            <input v-model="driverTelephone" type="text" class="form-control" placeholder="联系电话" required>
                        </div>
                    </div>
                     <div class="row">
                         <div class="col">
                             <input v-model="driverID" type="text" class="form-control" placeholder="身份证号" required>
                         </div>
                         <div class="col">
                             <input v-model="driverCarNumber" type="text" class="form-control" placeholder="车牌号" required>
                         </div>
                         <div class="col">
                                 <select v-model="driverCarType" class="custom-select" required style="font-size:16px;color:#6c757d">
                                     <option value="">请选择车型</option>
                                     <option value="重型货车">重型货车</option>
                                     <option value="中型货车">中型货车</option>
                                     <option value="轻型货车">轻型货车</option>
                                     <option value="微型货车">微型货车</option>
                                 </select>

                        </div>
                     </div>
                        <div class="row">
                            <div class="col">
                                <input v-model="driverCarDeadweight" type="text" class="form-control" placeholder="载重量" required>
                            </div>
                            <div class="col">
                                <div class="was-validated">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="validatedCustomFile"  required>
                                        <label class="custom-file-label" for="validatedCustomFile" style="font-size:16px;color:#6c757d">请上传您的身份证正面照</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="was-validated">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="validatedCustomFile1" required>
                                        <label class="custom-file-label" for="validatedCustomFile" style="font-size:16px;color:#6c757d">请上传您的驾驶证正面照</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                   </form>
                </div>
            </div>


            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h6 class="panel-title">货主录入</h6>
                </div>
                <div class="panel-body">
                    <form class="was-validated">
                        <div class="row">
                            <div class="col">
                                <input v-model="customerName" type="text" class="form-control" placeholder="货主" required>
                            </div>
                            <div class="col">
                                <input v-model="customerStartPoint" type="text" class="form-control" placeholder="起始地点" required>
                            </div>
                            <div class="col">
                                <input v-model="customerEndPoint" type="text" class="form-control" placeholder="目的地点" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <input v-model="customerGoodsWeight" type="text" class="form-control" placeholder="运载量" required>
                            </div>
                            <div class="col">
                                <input v-model="customerGoods" type="text" class="form-control" placeholder="运载物" value="" required>
                            </div>
                            <div class="col">
                                <input v-model="customerGoodsType" type="text" class="form-control" placeholder="货物种类" value="" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <input v-model="customerTelephone" type="text" class="form-control" placeholder="联系方式" value="" required>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="panel panel-success">
                <div class="panel-heading" >
                    <h6 class="panel-title" style="text-align: center">匹配结果</h6> <!-- 此处绑定隐藏事件，点击标题浮现面板下部 -->
                </div>
                <div class="panel-body" id="matchShow">
                   <div class="later" id="later" >
                       <div class="row" style="margin-left: auto;margin-bottom: 5px">
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend" ><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">货主</span></div>
                                   <input type="text" class="input-group-text" v-model="customerName" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">运载物</span></div>
                                   <input type="text" class="input-group-text"  v-model="customerGoods" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">运载量</span></div>
                                   <input type="text" class="input-group-text" v-model="customerGoodsWeight" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>

                       </div>
                       <div class="row" style="margin-left: auto;margin-bottom: 5px">
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">运载种类</span></div>
                                   <input type="text" class="input-group-text" v-model="customerGoodsType"  disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">起始地点</span></div>
                                   <input type="text" class="input-group-text" v-model="customerStartPoint" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">目的地点</span></div>
                                   <input type="text" class="input-group-text" v-model="customerEndPoint" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                       </div>
                       <div class="row" style="margin-left: auto;margin-bottom: 5px">
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">司机姓名</span></div>
                                   <input type="text" class="input-group-text" v-model="driverName" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">车牌号</span></div>
                                   <input type="text" class="input-group-text" v-model="driverCarNumber" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">车型</span></div>
                                   <input type="text" class="input-group-text" v-model="driverCarType" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                       </div>
                       <div class="row" style="margin-left: auto;margin-bottom: 5px">
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">物流公司</span></div>
                                   <input type="text" class="input-group-text" v-model="driverCompany" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">货主电话</span></div>
                                   <input type="text" class="input-group-text" v-model="customerTelephone" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                           <div class="col">
                               <div class="input-group">
                                   <div class="input-group-prepend"><span class="input-group-text" style="display:inline-block;width: 120px;text-align: center">司机电话</span></div>
                                   <input type="text" class="input-group-text" v-model="driverTelephone" disabled style="width:140px;background-color: white;border-radius: 3px;border-left-color: #e9ecef">
                               </div>
                           </div>
                       </div>
                   </div>
                   </div>
                </div>

        </main>
        <script>
            var vue = new Vue({
                el:'#app',
                data:{
                   driverName:'',
                   customerName:'',
                   driverCarNumber:'',
                   driverCarType:'',
                   driverID:'',
                    driverCarDeadweight:'',
                   driverTelephone:'',
                   driverCompany:'',
                   customerTelephone:'',
                   customerStartPoint:'',
                   customerEndPoint:'',
                   customerGoods:'',
                   customerGoodsType:'',
                   customerGoodsWeight:'',
                },created: function () {

                },methods:{
                   match:function () {
                       $("#matchShow").toggle();
                   }
                }
            });
        </script>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/js/jquery-slim.min.js"><\/script>')</script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>