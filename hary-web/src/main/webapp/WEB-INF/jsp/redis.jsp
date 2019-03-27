<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Redis试用</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="jquery-3.3.1.js"></script>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<ul class="nav nav-tabs">
    <li><a href="/">数据库curd测试</a></li>
    <li><a href="/gotoLogin">登录测试(RabbitMQ测试)</a></li>
    <li class="active"><a href="/gotoRedis">Redis测试</a></li>
</ul>

<form action="queryDataInRedis" role="form">
    <div class="col-sm-4">
        <h4>调用Redis中的数据(默认Key为users)</h4>
        <button class="btn btn-default" type="submit" value="">调用</button>
    </div>
</form>

<form action="deleteDataInRedis" method="post" role="form">
    <div class="col-sm-8">
        <h4>清除Redis中的数据(默认Key为users)</h4>
        <button class="btn btn-default" type="submit" value="">清除</button>
    </div>
</form>

<form role="form" action="addDataToRedis" method="post">
    <div class="col-sm-12">
        <h4>添加数据到Redis(默认Key为users)</h4>
        <button type="submit" class="btn btn-default">添加</button>
    </div>
</form>

<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>${userList}</th>
        </tr>
        </thead>
    </table>

</div>
</body>
</html>
