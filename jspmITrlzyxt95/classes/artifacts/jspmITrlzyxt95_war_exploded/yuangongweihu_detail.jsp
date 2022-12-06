<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>员工维护详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

</head>

<body>
<%
    String id = request.getParameter("id");
    HashMap m = new CommDAO().getmap(id, "yuangongweihu");
%>
员工维护详细:
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
        <td width='11%'>性别：</td>
        <td width='39%'><%=m.get("xingbie")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>出生日期：</td>
        <td width='39%'><%=m.get("chushengriqi")%>
        </td>
        <td width='11%'>学历：</td>
        <td width='39%'><%=m.get("xueli")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>手机：</td>
        <td width='39%'><%=m.get("shouji")%>
        </td>
        <td width='11%'>邮箱：</td>
        <td width='39%'><%=m.get("youxiang")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>地址：</td>
        <td width='39%'><%=m.get("dizhi")%>
        </td>
        <td width='11%'>合同号：</td>
        <td width='39%'><%=m.get("hetonghao")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>入职时间：</td>
        <td width='39%'><%=m.get("ruzhishijian")%>
        </td>
        <td width='11%'>事件：</td>
        <td width='39%'><%=m.get("shijian")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>离职时间：</td>
        <td width='39%'><%=m.get("lizhishijian")%>
        </td>
        <td width='11%'>离职原因：</td>
        <td width='39%'><%=m.get("lizhiyuanyin")%>
        </td>
    </tr>
    <tr>
        <td width='11%'>备注：</td>
        <td width='39%'><%=m.get("beizhu")%>
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


