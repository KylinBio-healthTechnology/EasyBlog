<%@ page language="java" import="java.util.*" import="cdu.blog.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
Admin admin = (Admin)request.getSession().getAttribute("admin");
Profile pf = (Profile)request.getAttribute("pf");
%>

<jsp:include page="frame/Header.jsp"></jsp:include>

	<% if (null != admin) { %>
	  <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          
          <a class="navbar-brand" href="<%=basePath%>admin/Index.jsp">SSM Blog管理系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li><a href="<%=basePath%>admin/Index.jsp"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a></li>
            <li class="active"><a href="<%=basePath %>admin.html?action=useradmin"><i class="glyphicon glyphicon-cog"></i> 用户管理</a></li>
            <li><a href="<%=basePath %>admin.html?action=SysArticalAdmin"><i class="glyphicon glyphicon-cog"></i> 文章管理</a></li>
            <li><a href="<%=basePath %>admin.html?action=SysCategoryAdmin"><i class="glyphicon glyphicon-cog"></i> 分类管理</a></li>
              <li><a href="<%=basePath%>logout"><i class="glyphicon glyphicon-off"></i> 退出登录</a></li>
          </ul>


        </div><!-- /.navbar-collapse -->
      </nav>
      
      
      <div id="page-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h1>SSM博客系统 <small>基于SSM技术构建</small></h1>
            <ol class="breadcrumb">
              <li><a href="<%=basePath%>admin/Index.jsp"><i class="icon-dashboard"></i> 博客后台首页</a></li>
              <li><a href="<%=basePath%>userManage"><i class="icon-bar-chart"></i> 用户管理</a></li>
              <li class="active"> 用户详细信息</li>
            </ol>
          </div>
        </div> 
        
        <div class="row">
       	<div class="col-lg-12">
         	<div class="table-responsive">
           	<table class="table table-hover tablesorter">
			<thead>
				<tr>
					<th>姓</th>
          			<th>名</th>
          			<th>性别</th>
          			<th>联系电话</th>
         			</tr>
         			
         		</thead>
         		<tbody>
         			<tr>
         				<th>
         					<%=pf.getFirstName() %>
         				</th>
         				<th>
         					<%=pf.getLastName() %>
         				</th>
         				<th>
         					<% if (pf.getGender() == 1) { %>  
          				男
          				<% } else { %>
          				女
          				<% }  %>
         				</th>
         				<th>
         					<%=pf.getTelephone() %>
         				</th>
         			</tr>
         		</tbody>
         	</table>
			</div>
         </div>
        </div><!-- /.row -->
      </div><!-- /#page-wrapper -->    

<% } else { %>
<%-- 404 page --%>
<% } %>
<jsp:include page="frame/Footer.jsp"></jsp:include>
            
            