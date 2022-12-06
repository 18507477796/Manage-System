<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>考勤信息</title>
    <LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
</head>


<body>
<p>已有考勤信息列表：</p>
<form name="form1" id="form1" method="post" action="">
    搜索: 工号：<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12"/>
    部门：<input name="bumen" type="text" id="bumen" style='border:solid 1px #000000; color:#666666' size="12"/> 姓名：<input
        name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12"/> 月份：<select
        name='yuefen' id='yuefen' style='border:solid 1px #000000; color:#666666;'>
    <option value="">所有</option>
    <option value="1月">1月</option>
    <option value="2月">2月</option>
    <option value="3月">3月</option>
    <option value="4月">4月</option>
    <option value="5月">5月</option>
    <option value="6月">6月</option>
    <option value="7月">7月</option>
    <option value="8月">8月</option>
    <option value="9月">9月</option>
    <option value="10月">10月</option>
    <option value="11月">11月</option>
    <option value="12月">12月</option>
</select>
    <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666'/> <input type="button"
                                                                                                           name="Submit2"
                                                                                                           value="导出EXCEL"
                                                                                                           style='border:solid 1px #000000; color:#666666'
                                                                                                           onClick="javascript:location.href='kaoqinxinxi_listxls.jsp';"/>
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF"
       style="border-collapse:collapse">
    <tr>
        <td width="30" align="center" bgcolor="CCFFFF">序号</td>
        <td bgcolor='#CCFFFF'>工号</td>
        <td bgcolor='#CCFFFF'>部门</td>
        <td bgcolor='#CCFFFF'>姓名</td>
        <td bgcolor='#CCFFFF'>月份</td>
        <td bgcolor='#CCFFFF'>正常上班</td>
        <td bgcolor='#CCFFFF'>加班</td>
        <td bgcolor='#CCFFFF'>请假</td>
        <td bgcolor='#CCFFFF'>旷工</td>


        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>

        <td width="60" align="center" bgcolor="CCFFFF">操作</td>
    </tr>
    <%


        new CommDAO().delete(request, "kaoqinxinxi");
        String url = "kaoqinxinxi_list.jsp?1=1";
        String sql = "select * from kaoqinxinxi where 1=1";

        if (request.getParameter("gonghao") == "" || request.getParameter("gonghao") == null) {
        } else {
            sql = sql + " and gonghao like '%" + request.getParameter("gonghao") + "%'";
        }
        if (request.getParameter("bumen") == "" || request.getParameter("bumen") == null) {
        } else {
            sql = sql + " and bumen like '%" + request.getParameter("bumen") + "%'";
        }
        if (request.getParameter("xingming") == "" || request.getParameter("xingming") == null) {
        } else {
            sql = sql + " and xingming like '%" + request.getParameter("xingming") + "%'";
        }
        if (request.getParameter("yuefen") == "" || request.getParameter("yuefen") == null) {
        } else {
            sql = sql + " and yuefen = '" + request.getParameter("yuefen") + "'";
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
        <td><%=map.get("bumen") %>
        </td>
        <td><%=map.get("xingming") %>
        </td>
        <td><%=map.get("yuefen") %>
        </td>
        <td><%=map.get("zhengchangshangban") %>
        </td>
        <td><%=map.get("jiaban") %>
        </td>
        <td><%=map.get("qingjia") %>
        </td>
        <td><%=map.get("kuanggong") %>
        </td>


        <td width="138" align="center"><%=map.get("addtime") %>
        </td>
        <td width="60" align="center"><a href="kaoqinxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a> <a
                href="kaoqinxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a
                href="kaoqinxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a></td>
    </tr>
    <%
        }
    %>
</table>
<br>

${page.info }


</body>
</html>
