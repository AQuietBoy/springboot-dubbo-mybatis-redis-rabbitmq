<%--
  Created by IntelliJ IDEA.
  User: chenzhenhui
  Date: 2019-3-7
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="jquery-3.3.1.js"></script>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="/admin_index">数据库curd测试</a></li>
    <li class="disabled"><a href="/gotoLogin">登录测试(RabbitMQ测试)</a></li>
    <li><a href="/gotoRedis">Redis测试</a></li>
    <li><a href="/gotoSeckill">模拟秒杀活动页面</a></li>
    <li class="pull-right"><a href="/logout"><span class="glyphicon glyphicon-log-out"></span>退出</a> </li>
    <li class="pull-right"><a data-toggle="modal" data-target="#userInfo"><span class="glyphicon glyphicon-user"></span> ${user.user_Name}</a></li>
</ul>
${user.user_Name}登录成功，您的身份是${user.user_Identity}(RabbiMQ测试结果请到控制台查看)
<hr>
回调消息：${callback_message}

<div class="modal fade" id="userInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!--模态框头部-->
            <div class="modal-header">
                <button class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">User Information</h4>
            </div>
            <form id="form_update_password" role="form">
                <!--模态框body部分-->
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon">用户名：</span>
                        <input name="username" type="text" class="form-control" placeholder="${user.user_Name}" disabled>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">电  &nbsp;&nbsp;话：</span>
                        <input name="tel" type="text" class="form-control" placeholder="${user.user_Tel}" disabled>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">密  &nbsp;&nbsp;码：</span>
                        <input name="password" type="password" class="form-control" placeholder="${user.user_Password}" disabled>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">年  &nbsp;&nbsp;龄：</span>
                        <input name="age" type="text" class="form-control" placeholder="${user.user_Age}" disabled>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">性  &nbsp;&nbsp;别：</span>
                        <input name="sex" type="text" class="form-control" placeholder="${user.user_Sex}" disabled>
                    </div><br>
                </div>
                <!--模态框脚注-->
                <div class="modal-footer">
                    <button class="btn btn-primary" data-dismiss="modal">关闭</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
