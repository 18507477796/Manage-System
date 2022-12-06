<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>请假信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

</head>

<body>
<%
    String id = request.getParameter("id");
    HashMap m = new CommDAO().getmap(id, "qingjiaxinxi");
%>
请假信息详细:
<br><br>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
       style="border-collapse:collapse">
    <tr>
        <td width='11%'>工号：</td>
        <td width='39%'><%=m.get("gonghao")%>
        </td>
        <td width='11%'>姓名：</td>
        <td width='39%'><%=m.get("xingming")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>开始时间：</td>
        <td width='39%'><%=m.get("kaishishijian")%>
        </td>
        <td width='11%'>结束时间：</td>
        <td width='39%'><%=m.get("jieshushijian")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>天数：</td>
        <td width='39%'><%=m.get("tianshu")%>
        </td>
        <td width='11%'>事由：</td>
        <td width='39%'><%=m.get("shiyou")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>状态：</td>
        <td width='39%'><%=m.get("zhuangtai")%>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
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


