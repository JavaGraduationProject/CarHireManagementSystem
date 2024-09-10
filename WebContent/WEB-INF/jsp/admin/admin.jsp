<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!-- 评价界面 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <title>后台管理系统</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${ctx}/resource/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resource/css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/resource/css/style.css" />
    <script type="text/javascript" src="${ctx}/resource/js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/bootstrap.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/ckform.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/common.js"></script>
</head>
  <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }
        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
       td{text-align:center;}
    </style>
<body>
 
<form class="form-inline definewidth m20" action="admin_admin.do" method="post">  
    管理员名：
    <input type="text" name="adminName" id="adminName"class="abc input-default" placeholder="" value="${admin.adminName}">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;<button type="button" class="btn btn-success" id="add">新增管理员</button>
</form>
<table class="table table-bordered table-hover definewidth m10" align="center">
    <thead>
    <tr>
        <th>管理员ID</th>
        <th>管理员名</th>
        <th>管理员姓名</th>
<!--         <th>状态</th> -->
        <th>操作</th>
    </tr>
    </thead>
     <c:forEach items="${pagers.datas}" var="admin" varStatus="l">
      <tr >
            <td align="center">${admin.id}</td>
            <td>${admin.adminName}</td>
            <td>${admin.realName}</td>
<!--             <td> -->
<%--                <c:if test="${admin.isDelete == 0 }"> --%>
<!--                                               正常 -->
<%--                </c:if> --%>
<%--                <c:if test="${admin.isDelete == 1 }"> --%>
<!--                                              删除 -->
<%--                </c:if> --%>
<!--             </td> -->
             <td>
                   <a id="update" href="${ctx}/admin_update.do?id=${admin.id}">修改</a>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <a id="update" href="${ctx}/admin_delete.do?id=${admin.id}" onclick= "if(confirm( '是否删除！ ')==false)return   false; ">删除</a>
            </td>
        </tr>
     </c:forEach>
 </table>
 <div class="panel-foot text-center">
      <pg:pager  url="${ctx}/admin_admin.do" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
		<pg:param name="adminName" value="${admin.adminName}"/>
		<pg:last>  
			共${pagers.total}记录,共${pageNumber}页,  
		</pg:last>  
			当前第${curPage}页 
  
        <pg:first>  
    		<a href="${pageUrl}">首页</a>  
		</pg:first>  
		<pg:prev>  
    		<a href="${pageUrl}">上一页</a>  
		</pg:prev>  
      
       	<pg:pages>  
        	<c:choose>  
            	<c:when test="${curPage eq pageNumber}">  
                	<font color="red">[${pageNumber }]</font>  
            	</c:when>  
            	<c:otherwise>  
               		<a href="${pageUrl}">${pageNumber}</a>  
            	</c:otherwise>  
        	</c:choose>  
    	</pg:pages>
             
        <pg:next>  
    		<a href="${pageUrl}">下一页</a>  
		</pg:next>  
		<pg:last>  
			<c:choose>  
            	<c:when test="${curPage eq pageNumber}">  
                	<font color="red">尾页</font>  
            	</c:when>  
            	<c:otherwise>  
               		<a href="${pageUrl}">尾页</a>  
            	</c:otherwise>  
        	</c:choose> 
    		  
		</pg:last>
	</pg:pager>
    </div>
</body>
<script>
    $(function () {
		$('#add').click(function(){
			window.location.href="${ctx}/admin_add.do";
		 });
    });
</script>