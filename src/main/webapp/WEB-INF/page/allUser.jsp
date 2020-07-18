<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    pageContext.setAttribute("path", request.getContextPath());

%>
<html>
<head>
    <title>用户管理界面</title>
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

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${path}/user/toAddUser">添加新用户</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>邮箱</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.userName}</td>
                        <td>${user.password}</td>
                        <td>${user.email}</td>
                        <td>
                            <a href="${path}/user/toUpdateUser?id=${user.id}">修改</a> |
                            <a href="${path}/user/del/${user.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <ul class="pager">
                <c:if test="${curPage>1 }">

                    <li class="previous"><a
                            href="<%=basePath %>user/allUser&userId=${user.id }&curPage=${curPage-1}">&larr;
                        上一页</a></li>

                </c:if>
                <c:if test="${curPage<totalPages }">
                    <li class="next"><a
                            href="<%=basePath %>user/allUser&userId=${user.id }&curPage=${curPage+1}">下一页
                        &rarr;</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
<jsp:include page="../../frame/AdminFooter.jsp"></jsp:include>