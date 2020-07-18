<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    pageContext.setAttribute("path", request.getContextPath());

%>
<html>
<head>
    <title>修改用户</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath %>bootstrap/css/bootstrap-theme.css" rel="stylesheet">


    <link href="<%=basePath %>bootstrap/css/blog-home.css" rel="stylesheet">
    <script src="<%=basePath %>bootstrap/js/jquery-2.1.1.js"></script>
</head>
<body>
<div class="container">
    <div class="col-lg-12">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

            <div class="navbar-header">
                <a class="navbar-brand" href="<%=basePath%>admin/Index.jsp">SSM Blog管理系统</a>
            </div>

            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active"><a href="<%=basePath %>admin/Index.jsp"><i class="glyphicon glyphicon-dashboard"></i> 博客后台首页</a></li>
                    <li><a href="<%=basePath %>user/allUser"><i class="glyphicon glyphicon-cog"></i> 用户管理</a></li>

                    <li><a href="<%=basePath %>articleManage/allArticleManage"><i class="glyphicon glyphicon-cog"></i> 博文管理</a></li>
                    <li><a href="<%=basePath %>log/allLog"><i class="glyphicon glyphicon-cog"></i> 系统日志</a></li>
                    <li><a href="<%=basePath%>logout"><i class="glyphicon glyphicon-off"></i> 退出登录</a></li>
                </ul>

            </div>
        </nav>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的博客后台系统—用户管理
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改用户</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="" name="userForm">
        <input type="hidden" name="id" value="${user.id}"/>
        用户名：<input type="text" name="userName" value="${user.userName}"/>
        密码：<input type="text" name="password" value="${user.password}"/>
        邮箱：<input type="text" name="email" value="${user.email }"/>
        <input type="button" value="提交" onclick="updateUser()"/>
    </form>
    <script type="text/javascript">
        function updateUser() {
            var form = document.forms[0];
            form.action = "${path}/user/updateUser";
            form.method = "post";
            form.submit();
        }
    </script>
</div>