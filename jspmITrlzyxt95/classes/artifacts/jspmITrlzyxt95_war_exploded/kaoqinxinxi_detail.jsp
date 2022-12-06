<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>考勤信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

</head>

<body>
<%
    String id = request.getParameter("id");
    HashMap m = new CommDAO().getmap(id, "kaoqinxinxi");
%>
考勤信息详细:
<br><br>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
       style="border-collapse:collapse">
    <tr>
        <td width='11%'>工号：</td>
        <td width='39%'><%=m.get("gonghao")%>
        </td>
        <td width='11%'>部门：</td>
        <td width='39%'><%=m.get("bumen")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>姓名：</td>
        <td width='39%'><%=m.get("xingming")%>
        </td>
        <td width='11%'>月份：</td>
        <td width='39%'><%=m.get("yuefen")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>正常上班：</td>
        <td width='39%'><%=m.get("zhengchangshangban")%>
        </td>
        <td width='11%'>加班：</td>
        <td width='39%'><%=m.get("jiaban")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>请假：</td>
        <td width='39%'><%=m.get("qingjia")%>
        </td>
        <td width='11%'>旷工：</td>
        <td width='39%'><%=m.get("kuanggong")%>
        </td>
    </tr>
    <tr>
        <td colspan=4 align=center><input type=button name=Submit5 value=返回
                                          onClick="javascript:history.back()"/>&nbsp;<input type=button name=Submit5
                                                                                            value=打印
                                                                                            onClick="javascript:window.print()"/>
        </td>
    </tr>

</table>

</body>
</html>


