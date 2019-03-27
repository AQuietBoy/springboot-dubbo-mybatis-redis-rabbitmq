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
                var password = $("#password").val();
                var confirm_password = $("#confirm_password").val();
                if(password!=confirm_password){
                    alert("两次密码输入不一致！");
                }
            });
        });
    </script>
</head>
<body>
    <ul class="nav nav-tabs">
        <li class="active"><a href="/">数据库curd测试</a></li>
        <li><a href="/gotoLogin">登录测试(RabbitMQ测试)</a></li>
        <li><a href="/gotoRedis">Redis测试</a></li>
    </ul>
    <form action="" role="form">
        <div class="col-sm-3" style="width: 200px">
            <h3>查询所有用户</h3>
            <button class="btn btn-default" type="submit" value="">查询所有用户信息</button>
        </div>
    </form>
    <form action="deleteUserByID" method="post" role="form">
        <div class="col-sm-3">
            <h3>删除用户</h3>
            <input class="form-control" name="id" type="text" placeholder="请输入用户ID" required="true">
            <button class="btn btn-default" type="submit" value="">删除用户信息</button>
        </div>
    </form>
    <form role="form" action="addUser" method="post">
        <div class="col-sm-3">
            <h3>添加用户</h3>
            <input name="username" type="text" class="form-control" placeholder="请输入用户名" required="true">
            <input name="password" type="password" class="form-control" placeholder="请输入密码" required="true">
            <input name="realname" type="text" class="form-control" placeholder="请输入身份" required="true">
            <button type="submit" class="btn btn-default">添加用户</button>
        </div>
    </form>
    <form action="updatePassword" role="form" method="post">
        <div class="col-sm-3">
            <h3>更改密码</h3>
            <input id="id" name="id" type="text" class="form-control" placeholder="请输入用户ID" required="true">
            <input id="password" name="password" type="password" class="form-control" placeholder="请输入新密码" required="true">
            <input id="confirm_password" name="confirm_password" type="password" class="form-control" placeholder="请再次输入密码" required="true">
            <button type="submit" class="btn btn-default">修改密码</button>
        </div>
    </form>
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
                    <th>密码</th>
                    <th>身份</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                        <td>${user.realname}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <br><br>

        <div class="text-center">
            <nav>
                <ul class="pagination">
                    <li><a href="<c:url value="/?page=1"/> ">首页</a> </li>
                    <li><a href="<c:url value="/?page=${page-1>1?page-1:1}"/> ">&laquo;</a> </li>

                    <c:forEach begin="1" end="${totalPages}" varStatus="status">
                        <c:set var="active" value="${status.index==page?'active':''}"/>
                        <li class="${active}">
                            <a href="<c:url value="/?page=${status.index}"/> ">${status.index}</a>
                        </li>
                    </c:forEach>

                    <li><a href="<c:url value="/?page=${page+1<totalPages?page+1:totalPages}"/>">&raquo;</a> </li>
                    <li><a href="<c:url value="/?page=${totalPages}"/>">尾页</a> </li>
                </ul>
            </nav>
        </div>
    </div>
</body>
</html>
