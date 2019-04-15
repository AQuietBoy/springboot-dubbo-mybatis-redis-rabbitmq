<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Springboot Mybatis Redis Dubbo RabbitMQ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="jquery-3.3.1.js"></script>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#confirm_password").mouseleave(function () {
                var password1 = $("#password1").val();
                var confirm_password = $("#confirm_password").val();
                if(password1!=confirm_password){
                    alert("两次密码输入不一致！");
                }
            });
        });
    </script>

</head>
<body>
    <ul class="nav nav-tabs">
        <li class="active"><a href="/admin_index">数据库curd测试</a></li>
        <li class="disabled"><a href="/gotoLogin">登录测试(RabbitMQ测试)</a></li>
        <li><a href="/gotoRedis">Redis测试</a></li>
        <li><a href="/gotoSeckill">模拟秒杀活动页面</a></li>
        <li class="pull-right"><a href="/logout"><span class="glyphicon glyphicon-log-out"></span>退出</a> </li>
        <li class="pull-right"><a data-toggle="modal" data-target="#userInfo"><span class="glyphicon glyphicon-user"></span> ${user.user_Name}</a></li>
    </ul><hr>

    <div class="row container">

        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#deleteuser">
            删除用户信息
        </button>&emsp;

        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#adduser">
            添加用户
        </button>&emsp;

        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#resetpassword">
            重置密码
        </button>
    </div>

    <hr>

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

    <%--模态框--%>
    <div class="modal fade" id="deleteuser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <!--模态框头部-->
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Delete User</h4>
                </div>
                <form action="deleteUserByID" method="post" role="form">
                    <!--模态框body部分-->
                    <div class="modal-body">
                        <input class="form-control" name="id" type="text" placeholder="请输入用户ID" required="true">
                    </div>
                    <!--模态框脚注-->
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">确认删除</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%--模态框--%>
    <div class="modal fade" id="adduser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <!--模态框头部-->
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Add User</h4>
                </div>
                <form id="form_addUser" action="#" role="form">
                    <!--模态框body部分-->
                    <div class="modal-body">
                        <input id="username" name="username" type="text" class="form-control" placeholder="请输入用户名" required="true"><br>
                        <input id="tel" name="tel" type="text" class="form-control" placeholder="请输入手机号" required="true"><br>
                        <input id="password" name="password" type="password" class="form-control" placeholder="请输入密码" required="true"><br>
                        <input id="age" name="age" type="text" class="form-control" placeholder="请输入年龄" required="true"><br>
                        <input id="sex" name="sex" type="text" class="form-control" placeholder="请输入性别" required="true"><br>
                    </div>
                    <!--模态框脚注-->
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button id="button_addUser" type="button" class="btn btn-primary">确认添加</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%-- 添加用户(Ajax和JSON传输表单数据) --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#button_addUser").click(function () {
                /*$.support.cors=true;*/
                $.ajax({
                    url:"/addUser",
                    type:"post",
                    contentType:"application/json;charset=utf-8",
                    data:JSON.stringify(
                        {
                            username:$("#username").val().trim(),
                            tel:$("#tel").val().trim(),
                            password:$("#password").val().trim(),
                            age:$("#age").val().trim(),
                            sex:$("#sex").val().trim()
                        }
                    ),
                    dataType:"text",
                    success:function (data) {
                        var user = JSON.parse(data);
                        alert("添加成功,添加数据为：" + user.username);
                        window.location.href="/admin_index?page=${totalPages}";
                    }
                });
            });
        });
    </script>

    <%--模态框--%>
    <div class="modal fade" id="resetpassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <!--模态框头部-->
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Update Password</h4>
                </div>
                <form id="form_reset_password" role="form">
                    <!--模态框body部分-->
                    <div class="modal-body">
                        <input id="id" name="id" type="text" class="form-control" placeholder="请输入用户ID" required="true"><br>
                        <input id="password1" name="password" type="password" class="form-control" placeholder="请输入新密码" required="true"><br>
                        <input id="confirm_password" name="confirm_password" type="password" class="form-control" placeholder="请再次输入密码" required="true"><br>
                    </div>
                    <!--模态框脚注-->
                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button id="button_reset_password" type="button" class="btn btn-primary">确认修改</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%-- 修改密码(Ajax和JSON提交表单数据) --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#button_reset_password").click(function () {
                $.ajax({
                    url:"/resetPassword",
                    type:"post",
                    contentType:"application/json;charset=utf-8",
                    data:JSON.stringify({
                        id:$("#id").val().trim(),
                        confirm_password:$("#confirm_password").val().trim()
                    }),
                    dataType:"json",
                    success:function (data) {
                        alert("修改密码成功,修改的用户ID为：" + data.id);
                        window.location.href="";
                    }
                });
            });
        });
    </script>

    <div class="container">
        <c:set var="totalUsers" value="${requestScope.totalUsers}"/>
        <c:set var="usersPerPage" value="${requestScope.usersPerPage}"/>
        <c:set var="totalPages" value="${requestScope.totalPages}"/>
        <c:set var="beginIndex" value="${requestScope.beginIndex}"/>
        <c:set var="endIndex" value="${requestScope.endIndex}"/>
        <c:set var="page" value="${requestScope.page}"/>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>用户名</th>
                    <th>Tel</th>
                    <th>年龄</th>
                    <th>性别</th>
                    <th>身份</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.user_Id}</td>
                        <td>${user.user_Name}</td>
                        <td>${user.user_Tel}</td>
                        <td>${user.user_Age}</td>
                        <td>${user.user_Sex}</td>
                        <td>${user.user_Identity}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <br><br>

        <div class="text-center">
            <nav>
                <ul class="pagination">
                    <li><a href="<c:url value="/admin_index?page=1"/> ">首页</a> </li>
                    <li><a href="<c:url value="/admin_index?page=${page-1>1?page-1:1}"/> ">&laquo;</a> </li>

                    <c:forEach begin="1" end="${totalPages}" varStatus="status">
                        <c:set var="active" value="${status.index==page?'active':''}"/>
                        <li class="${active}">
                            <a href="<c:url value="/admin_index?page=${status.index}"/> ">${status.index}</a>
                        </li>
                    </c:forEach>

                    <li><a href="<c:url value="/admin_index?page=${page+1<totalPages?page+1:totalPages}"/>">&raquo;</a> </li>
                    <li><a href="<c:url value="/admin_index?page=${totalPages}"/>">尾页</a> </li>
                </ul>
            </nav>
        </div>
    </div>
</body>
</html>
