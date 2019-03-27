<%--
  Created by IntelliJ IDEA.
  User: chenzhenhui
  Date: 2019-3-7
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="jquery-3.3.1.js"></script>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        #input1,#input2{
            width: 300px;
        }
        .container1{
            background: #ffffff;
            border: 1px solid #d8dee2;
            border-radius: 5px;
            padding: 20px;
            box-sizing: border-box;
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="/">数据库curd测试</a></li>
    <li class="active"><a href="/gotoLogin">登录测试(RabbitMQ测试)</a></li>
    <li><a href="/gotoRedis">Redis测试</a></li>
</ul>
    <div class="container1">
        <div class="active">
            <form action="login" role="form" method="post">
                <h4>User Login</h4>
                <input id="input1" type="text" name="username" placeholder="Username" class="form-control" required="true">
                <br>
                <input id="input2" type="password" name="password" placeholder="Password" class="form-control" required="true">
                <br>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
