<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>请假信息</title>
    <LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
</head>


<body>
<p>已有请假信息列表：</p>
<form name="form1" id="form1" method="post" action="">
    搜索: 工号：<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12"/>
    姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12"/>
    <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666'/>
</form>

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
        <td bgcolor='#CCFFFF'>回复</td>

        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
        <td width="60" align="center" bgcolor="CCFFFF">操作</td>
    </tr>
    <%


        new CommDAO().delete(request, "qingjiaxinxi");
        String url = "qingjiaxinxi_list2.jsp?1=1";
        String sql = "select * from qingjiaxinxi where gonghao='" + request.getSession().getAttribute("username") + "' ";

        if (request.getParameter("gonghao") == "" || request.getParameter("gonghao") == null) {
        } else {
            sql = sql + " and gonghao like '%" + request.getParameter("gonghao") + "%'";
        }
        if (request.getParameter("xingming") == "" || request.getParameter("xingming") == null) {
        } else {
            sql = sql + " and xingming like '%" + request.getParameter("xingming") + "%'";
        }
        sql += " order by id desc";
        ArrayList<HashMap> list = PageManager.getPages(url, 15, sql, request);
        int i = 0;
        for (HashMap map : list) {
            i++;


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
        <td width="60" align="center"><a href="qingjiaxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a></td>
    </tr>
    <%
        }
    %>
</table>
<br>

${page.info }


</body>
</html>

