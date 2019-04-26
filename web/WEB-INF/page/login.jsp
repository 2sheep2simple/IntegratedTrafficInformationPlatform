<%--
  Created by IntelliJ IDEA.
  User: Mr.Su
  Date: 2019/2/15
  Time: 4:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>登录</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="shortcut icon" href="/img/favicon.png">
    <link href="/css/signin.css" rel="stylesheet">
    <script src="/js/vue.min.js"></script>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
        }
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>
<body class="text-center">
<div class="form-signin">
    <img class="mb-4" src="/img/icon.png" alt="" width="120" height="80 ">
    <h1 class="h3 mb-3 font-weight-normal">合肥马钢物流</h1>
    <label for="inputEmail" class="sr-only">账号</label>
    <input type="email" id="inputEmail" class="form-control" placeholder="邮箱号" v-model="number">
    <label for="inputPassword" class="sr-only">密码</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="密码" v-model="pwd" >
    <select class="form-control" >
        <option selected>请您的选择身份</option>
        <option>企业伙伴</option>
        <option >管理员</option>
        <option>客户</option>
    </select><br>
    <button class="btn btn-lg btn-primary btn-block" type="submit" @click="login">登录</button>
    <p class="mt-5 mb-3 text-muted">合肥马钢物流有限公司© 2019-2020</p>
</div>
<script type="text/javascript">
    new Vue({
        el:'.form-signin',
        data:{
            number:this.number,
            pwd: this.pwd
        },
        methods:{
            login:function () {
                window.location.href='http://localhost:8080/loginIndex'
            }
        }
    });
</script>

</body></html>