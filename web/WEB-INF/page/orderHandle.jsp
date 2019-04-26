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
    <title>订单处理</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link href="/css/vue30.css" rel="stylesheet">
    <link href="/css/vue10.css" rel="stylesheet">
    <link href="/css/user-defined.css" rel="stylesheet">
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
    </style>
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/vue251.js"></script>
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
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">马钢物流-订单管理</a>
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
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/order/analysis')>订单分析</button>
                    <button type="button" class="list-group-item list-group-item-action active">订单处理</button>
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
                <p id="collapse3" >
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/car/track')>货物跟踪</button>
                    <button type="button" class="list-group-item list-group-item-action" onclick=window.open('http://localhost:8080/car/match')>车货匹配</button>
                </p>
            </div>
        </nav>


        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
            <div id="table">

                <div class="select"><!--查询栏-->
                    <input  type="text" v-model="selectDetail.orderId" name="orderId"  placeholder="输入订单号码查询"/>
                    <input  type="text" v-model="selectDetail.statusOfPayment" name="statusOfpayment" placeholder="输入支付状态查询"/>
                    <input  type="text" v-model="selectDetail.getTime" name="getTime"  placeholder="输入到货状态查询"/>
                    <button @click="showall" >显示全部</button>
                    <button @click="selectdetail" >查询</button>
                </div>

                <div class="add">  <!--增加栏-->
                    <input type="text" v-model="addDetail.orderId" name="orderId"  placeholder="订单号" />
                    <input type="text" v-model="addDetail.goodsName" name="goodsName" value="" placeholder="商品信息" />
                    <input type="text" v-model="addDetail.customerName" name="customerName" value="" placeholder="顾客名称" />
                    <input type="text" v-model="addDetail.numberOfGoods" name="numberOfGoods" value="" placeholder="商品数量" />
                    <button @click="clearadddetail">清空</button>
                    <input type="text" v-model="addDetail.statusOfPayment" name="statusOfPayment" value="" placeholder="支付状态" />
                    <input type="text" v-model="addDetail.statusOfLogistics" name="statusOfLogistics" value="" placeholder="物流状态" />
                    <input type="text" v-model="addDetail.sendTime" name="sendTime" value="" placeholder="发货时间" />
                    <input type="text" v-model="addDetail.getTime" name="getTime" value="" placeholder="到货状态" />
                    <button @click="adddetail" >新增</button>
                </div>
                <table cellpadding="0" cellspacing="0">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>订单号</th>
                        <th>商品</th>
                        <th>客户</th>
                        <th>质量(/ton)</th>
                        <th>支付状态</th>
                        <th>物流状态</th>
                        <th>发货时间</th>
                        <th>到货时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr v-for="(item,index) in newsList"><!-- v-for 指令需要以 site in sites 形式的特殊语法， sites 是源数据数组并且 site 是数组元素迭代的别名。 -->
                        <td  width="3%" ><input type="checkbox" name="Checkbox" class="check" value="{{item.id}}" style="float:none;height:auto;">{{index+1}}</td>
                        <td  width="5%">{{item.orderId}}</td>
                        <td  width="6%">{{item.goodsName}}</td>
                        <td  width="5%">{{item.customerName}}</td>
                        <td  width="5%">{{item.numberOfGoods}}</td>
                        <td  width="5%">{{item.statusOfPayment}}</td>
                        <td  width="5%">{{item.statusOfLogistics}}</td><!--物流状态-->
                        <td  width="5%">{{item.sendTime}}</td>
                        <td  width="5%">{{item.getTime}}</td>
                        <td  width="5%"><span @click="deletelist(item.num,index)" class="delete">删除</span><span class="edit" @click="edit(item)">编辑</span></td>
                    </tr>
                    </tbody>
                </table>
                <div id="mask" v-if="editlist">
                    <div class="mask">
                        <div class="title" style="color: white;font-weight: normal">
                            编辑
                        </div>
                        <div class="content">
                            <input type="text" v-model="editDetail.goodsName" name="goodsName"  placeholder="商品" />
                            <input type="text" v-model="editDetail.customerName" name="customerName"  placeholder="客户" />
                            <input type="text" v-model="editDetail.numberOfGoods" name="numberOfGoods"  placeholder="质量(/ton)" />
                            <input type="text" v-model="editDetail.statusOfPayment" name="statusOfPayment"  placeholder="支付状态" />
                            <input type="text" v-model="editDetail.statusOfLogistics" name="statusOflogistics" value="" placeholder="物流状态" />
                            <input type="text" v-model="editDetail.sendTime" name="sendTime"  placeholder="发货时间" />
                            <input type="text" v-model="editDetail.getTime" name="getTime"  placeholder="到货时间" />
                            <button @click="update" style="background-color: #00EE00;color: white;border: 0px">更新</button>
                            <button @click="editlist=false" style="background-color: #dc3545;color: white;border: 0px">取消</button>
                        </div>
                    </div>
                </div>

                <script>
                    /*当一个 Vue 实例被创建时，它向 Vue 的响应式系统中加入了其 data 对象中能找到的所有的属性。当这些属性的值发生改变时，html 视图将也会产生相应的变化。*/
                    var vue =new Vue({
                        el:'#table',
                        data:{
                            newsList:[],
                            nowslsit:[],
                            addDetail: {},
                            selectDetail:{},
                            editlist: false,
                            editDetail: {},
                            editid:''
                        },
                        methods:{
                            init:function(){
                                var _self=this;
                                $.getJSON("/js/handleData.json", function(data){
                                    _self.newsList= data;
                                    _self.nowsList= data;
                                })
                            },
                            //清除查询输入框里的内容
                            clearselectdetail:function(){
                                $('#table > div.select > input[type="text"]') .val("")
                            },
                            //查询
                            selectdetail:function() {
                                if(this.selectDetail.orderId!=null){
                                    var _self = this;
                                    var I = _self.newsList.filter(function (e){
                                        return e.orderId == _self.selectDetail.orderId;
                                    })
                                    _self.newsList = I
                                }else if(this.selectDetail.statusOfPayment!=null){
                                    var _self = this;
                                    var I = _self.newsList.filter(function (e){
                                        return e.statusOfPayment == _self.selectDetail.statusOfPayment;
                                    })
                                    _self.newsList = I
                                }else if(this.selectDetail.getTime!=null){
                                    var _self = this;
                                    var I = _self.newsList.filter(function (e){
                                        return e.getTime == _self.selectDetail.getTime;
                                    })
                                    _self.newsList = I
                                }else {
                                    var _self=this;
                                    _self.newsList = _self.nowsList
                                }
                                _self.clearselectdetail()
                            },
                            showall:function(){
                                var _self=this;
                                _self.newsList = _self.nowsList
                            },
                            //清除添加输入框里的内容
                            clearadddetail:function(){
                                 $('#table > div.add > input[type="text"]') .val("")
                            },
                            //新增
                            adddetail: function() {
                                this.newsList.push({//为数组添加一组值，并返回该值的长度
                                    orderId: this.addDetail.orderId,
                                    goodsName: this.addDetail.goodsName,
                                    customerName: this.addDetail.customerName,
                                    numberOfGoods: this.addDetail.numberOfGoods,
                                    statusOfPayment: this.addDetail.statusOfPayment,
                                    statusOfLogistics: this.addDetail.statusOfLogistics,
                                    sendTime: this.addDetail.sendTime,
                                    getTime: this.addDetail.getTime,
                                    id:Math.floor(Math.random()*1000000+1)//先产生一个0-1之间的随机数，再取小于等于该数的最小整数
                                });
                            },
                            //删除
                            deletelist(num, i) {
                                this.newsList.splice(i, 1);//i 为index ,即需要删除的元素的位置
                            },
                            //编辑
                            edit(item) {
                                this.editDetail = {
                                    orderId: item.orderId,
                                    goodsName: item.goodsName,
                                    customerName: item.customerName,
                                    numberOfGoods: item.numberOfGoods,
                                    statusOfPayment: item.statusOfPayment,
                                    statusOfLogistics: item.statusOfLogistics,
                                    sendTime: item.sendTime,
                                    getTime: item.getTime,
                                    id: item.id
                                }
                                this.editlist = true
                                this.editid = item.orderId
                            },
                            //确认更新
                            update() {
                                var _this= this
                                for(var i = 0; i < _this.newsList.length; i++) {
                                    if(_this.newsList[i].orderId==this.editid) {
                                        _this.newsList[i] = {
                                            orderId: _this.editDetail.orderId,
                                            goodsName: _this.editDetail.goodsName,
                                            customerName: _this.editDetail.customerName,
                                            numberOfGoods: _this.editDetail.numberOfGoods,
                                            statusOfPayment: _this.editDetail.statusOfPayment,
                                            statusOfLogistics: _this.editDetail.statusOfLogistics,
                                            sendTime: _this.editDetail.sendTime,
                                            getTime: _this.editDetail.getTime,
                                            id: this.editid
                                        }
                                        this.editlist = false
                                    }
                                }
                            },
                        }
                    });
                    vue.init();
                </script>
                </div>
        </main>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/js/jquery-slim.min.js"><\/script>')</script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>