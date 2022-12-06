<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"/>
    <link href="css/left.css" type="text/css" rel="stylesheet"/>
    <title>左侧菜单</title>
    <script src="js/jquery.min.js"></script>
    <script language="javascript" type="text/javascript" charset="utf-8" src="js/admin.js"></script>
</head>

<body oncontextmenu="return false" ondragstart="return false" onSelectStart="return false">

<div class="div_bigmenu">
    <div class="div_bigmenu_nav_down" id="nav_1" onclick="javascript:lefttoggle(1);">系统管理员管理</div>
    <ul id="ul_1">
        <li><a href="yhzhgl.jsp" target='main'>管理员用户</a></li>
        <li><a href="mod.jsp" target='main'>修改密码</a></li>

    </ul>
</div>


<div class="div_bigmenu">
    <div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(2);" id="nav_2">部门管理</div>
    <ul id="ul_2">
        <li><a href="bumenxinxi_add.jsp" target='main'>部门添加</a></li>
        <li><a href="bumenxinxi_list.jsp" target='main'>部门查询</a></li>
    </ul>
</div>

<div class="div_bigmenu">
    <div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(3);" id="nav_3">员工管理</div>
    <ul id="ul_3">
        <li><a href="yuangongxinxi_add.jsp" target='main'>员工添加</a></li>
        <li><a href="yuangongxinxi_list.jsp" target='main'>员工查询</a></li>
    </ul>
</div>


<div class="div_bigmenu">
    <div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">出勤管理</div>
    <ul id="ul_4">
        <li><a href="kaoqinxinxi_add.jsp" target='main'>考勤信息添加</a></li>
        <li><a href="kaoqinxinxi_list.jsp" target='main'>考勤信息查询</a></li>
    </ul>
</div>




<div class="div_bigmenu">
    <div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">员工培训管理</div>
    <ul id="ul_6">
        <li><a href="gonggaoxinxi_add.jsp" target='main'>培训信息添加</a></li>
        <li><a href="gonggaoxinxi_list.jsp" target='main'>培训信息查询</a></li>
    </ul>
</div>




</body>
</html>


