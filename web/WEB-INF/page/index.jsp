<%--
  Created by IntelliJ IDEA.
  User: Mr.Su
  Date: 2019/2/12
  Time: 8:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>合肥·马钢物流</title>

    <!-- Bootstrap core CSS -->
    <link rel="shortcut icon" href="/img/favicon.png">
    <link href="/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

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
        #loginbtn {
            margin-left: 20px;
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="/css/carousel.css" rel="stylesheet">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">马钢物流</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">首页 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/login/index">订单管理</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/login/index">库存管理</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/login/index">职工信息</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/login/index">车辆调度</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">加盟投资</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">公司公告</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">服务支持</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">关于我们</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                <button type="button" id="loginbtn" class="btn btn-primary" onclick="window.open('login/index')">登陆</button>
            </form>
        </div>
    </nav>
</header>

<main role="main">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/img/carousels/8.jpg">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#777" width="100%" height="100%"></rect></svg>
                <div class="container">
                    <div class="carousel-caption text-left">
                        <h1>马钢六项产品在冶金产品实物质量认定中获佳绩</h1>
                        <p>近日，中国钢铁工业协会公布2018年度冶金产品实物质量“特优质量产品”和“金杯质量产品”名单。马钢六项产品榜上有名。其中，免退火冷镦钢热轧盘条SWRCH35K-M产品被授予“特优质量产品”。</p>
                        <p><a class="btn btn-lg btn-primary" href="http://www.magang.com.cn/d3/xwzx/jtzx/374279/index.html" role="button">了解更多</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/img/carousels/9.jpg">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#777" width="100%" height="100%"></rect></svg>
                <div class="container">
                    <div class="carousel-caption">
                        <h1>马钢“抗极寒”H型钢再获行业大奖</h1>
                        <p>日前，马钢开发的高寒地区结构用热轧H型钢继获得冶金科技进步一等奖及省科技进步一等奖之后，再获2018年度“中国钢铁工业产品开发市场开拓奖”。该产品的成功研发和市场拓展，不仅打破了国外对高端热轧H型钢产品的垄断，同时也为“一带一路”战略实施提供了高性能钢材安全保障</p>
                        <p><a class="btn btn-lg btn-primary" href="http://www.magang.com.cn/d3/xwzx/jtzx/374271/index.html" role="button">了解更多</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/img/carousels/10.jpg">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#777" width="100%" height="100%"></rect></svg>
                <div class="container">
                    <div class="carousel-caption text-right">
                        <h1>明确路线图 吹响冲锋号</h1>
                        <p>物流公司坚定决心，找准方向，紧紧盯住“完善管控模式、拓展外部市场”这两个核心问题，以变革求突破、谋发展他们居安思危，直面改革发展新挑战；勇敢破题，明晰改革发展路线图；真抓实干，吹响改革发展冲锋号</p>
                        <p><a class="btn btn-lg btn-primary" href="http://www.magang.com.cn/d3/xwzx/jtzx/374264/index.html" role="button">了解更多</a></p>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

        <!-- START THE FEATURETTES -->

        <%--<hr class="featurette-divider">--%>

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">解决仓储问题<span class="text-muted"></span></h2>
                <p class="lead">仓储系统在精益生产和精益物流中起着非常重要作用，目前仓储系统正向存取空间紧致化和服务时间即时化方面发展，马钢公司正面临转型，运用先进的仓储技术能有效提高其管理水平，增加其管理智慧化智能化，能有效降低成本，提高物流服务水平，促进转型升级。 </p>
            </div>
            <div class="col-md-5">
                <img src="/img/show/2.jpg" width="380" height="380" class="img-rounded">
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-7 order-md-2">
                <h2 class="featurette-heading">绩效评价指标体系 <span class="text-muted"></span></h2>
                <p class="lead">物流作为提高经济竞争力的重要因素，要想使其健康的发展，必须对其物流的计划，顾客服务，运输，存货的物流活动进行绩效评价与分析。才能够正确判断企业的实际经营水平，提高企业的经营能力，进而增加企业的整体效应。科学有效的物流绩效评价，是企业长远发展的有力保证；是企业现代化管理的重点；也是企业在激烈的市场竞争中立于不败之地的重要法宝之一。</p>
            </div>
            <div class="col-md-5 order-md-1">
                <img src="/img/show/3.jpg" width="380" height="380" class="img-rounded">
            </div>
        </div>

        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">企业战略合作 <span class="text-muted"></span></h2>
                <p class="lead">业的竞争力越来越依赖于企业的效率、市场反应能力和创新能力。随着市场的需求越来越个性化，对企业的响应速度提出了更高的要求，企业必须以一种快速的方式应对，不拘泥于刻板的流程，加速了企业的应对能力。为创造和开拓新市场、加快产品开发和投入市场的进程、促进资源的合理利用，这就要求企业进行战略协作。通过企业间建立长期战略联盟关系，利用合作的整体优势，增加合作各方的收益；合作各方费用共摊，风险共担，降低企业经营的风险，增强核心竞争力。</p>
            </div>
            <div class="col-md-5">
                <img src="/img/show/1.jpg" width="380" height="380" class="img-rounded">
            </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

    </div><!-- /.container -->


    <!-- FOOTER -->
    <footer class="container">
        <p class="float-right"><a href="#">Back to top</a></p>
        <p>© 2019-2020 合肥马钢物流平台, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>
</main>

<script src="/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/js/jquery-slim.min.js"><\/script>')</script><script src="/js/bootstrap.bundle.min.js" integrity="sha384-zDnhMsjVZfS3hiP7oCBRmfjkQC4fzxVxFhBx8Hkz2aZX8gEvA/jsP3eXRCvzTofP" crossorigin="anonymous"></script>
</body>
</html>