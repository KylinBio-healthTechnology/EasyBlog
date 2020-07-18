<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    pageContext.setAttribute("path", request.getContextPath());

%>
<html>
<head>
    <title>博文管理界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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
                    基于SSM框架的博客后台系统—博文管理
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>标题</th>
                    <th>内容</th>
                    <th>摘要</th>
                    <th>发布时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="article" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${article.id}</td>
                        <td>${article.title}</td>
                        <td>${article.content}</td>
                        <td>${article.summary}</td>
                        <td>${article.publishTime}</td>
                        <td>
                            <a href="${path}/articleManage/del/${article.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
