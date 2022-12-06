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
    <div class="div_bigmenu_nav_down" id="nav_1" onclick="javascript:lefttoggle(1);">个人信息管理</div>
    <ul id="ul_1">
        <li><a href="yuangongxinxi_updt2.jsp" target='main'>个人信息管理</a></li>


    </ul>
</div>


<div class="div_bigmenu">
    <div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(2);" id="nav_2">个人培训管理</div>
    <ul id="ul_2">

        <li><a href="gonggaoxinxi_list2.jsp" target='main'>查看培训</a></li>
    </ul>
</div>


<div class="div_bigmenu">
    <div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">考勤记录管理</div>
    <ul id="ul_4">

        <li><a href="kaoqinxinxi_list2.jsp" target='main'>考勤信息查询</a></li>
    </ul>
</div>



</body>
</html>


