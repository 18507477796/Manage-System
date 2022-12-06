<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>

<%
    response.setContentType("application/vnd.ms-excel");
    response.addHeader("Content-Disposition", "attachment;filename=Leave_information.xls");
%>
<html>
<head>
    <title>请假信息</title>
</head>

<body>
<p>已有请假信息列表：</p>


<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF"
       style="border-collapse:collapse">
    <tr>
        <td width="30" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>工号</td>
        <td bgcolor='#CCFFFF'>姓名</td>
        <td bgcolor='#CCFFFF' width='65' align='center'>开始时间</td>
        <td bgcolor='#CCFFFF' width='65' align='center'>结束时间</td>
        <td bgcolor='#CCFFFF'>天数</td>
        <td bgcolor='#CCFFFF'>事由</td>
        <td bgcolor='#CCFFFF'>状态</td>

        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>


    </tr>
    <%
        //difengysfiqfgieuheze
//youzuiping1
//txixixngdy
        String url = "qingjiaxinxi_list.jsp?1=1";
        String sql = "select * from qingjiaxinxi where 1=1";
        sql += " order by id desc";
        ArrayList<HashMap> list = PageManager.getPages(url, 15, sql, request);
        int i = 0;
        for (HashMap map : list) {
            i++;
            //wxflzhistri
            //zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
    %>
    <tr>
        <td width="30" align="center"><%=i %>
        </td>
        <td><%=map.get("gonghao") %>
        </td>
        <td><%=map.get("xingming") %>
        </td>
        <td><%=map.get("kaishishijian") %>
        </td>
        <td><%=map.get("jieshushijian") %>
        </td>
        <td><%=map.get("tianshu") %>
        </td>
        <td><%=map.get("shiyou") %>
        </td>
        <td><%=map.get("zhuangtai") %>
        </td>

        <td width="138" align="center"><%=map.get("addtime") %>
        </td>
    </tr>
    <%
        }
    %>
</table>

<br>
以上数据共<%=i %>条
</body>
</html>

