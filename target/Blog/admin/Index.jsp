<%@ page language="java" import="java.util.*" import="cdu.blog.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	Admin admin = (Admin) request.getSession().getAttribute("admin");
%>

<jsp:include page="frame/Header.jsp"></jsp:include>

<% if (null == admin) { %>
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
     
	<div id="page-wrapper">

        <div class="row">
          <div class="col-lg-12">
            <h1>SSM博客系统 <small>基于SSM技术构建</small></h1>
           </div>

         </div>
        </div>

      </div>
<% } else { %>
<%-- 404 page --%>
<% } %>
<jsp:include page="frame/Footer.jsp"></jsp:include>