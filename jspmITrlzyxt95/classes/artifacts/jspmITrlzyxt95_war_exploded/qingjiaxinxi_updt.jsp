<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>请假信息</title>

    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

</head>
<script language="javascript">

    function hsgxia2shxurxu(nstr, nwbk) {
        if (eval("form1." + nwbk).value.indexOf(nstr) >= 0) {
            eval("form1." + nwbk).value = eval("form1." + nwbk).value.replace(nstr + "；", "");
        }
        else {
            eval("form1." + nwbk).value = eval("form1." + nwbk).value + nstr + "；";
        }
    }
</script>

<body>
<%

    String id = request.getParameter("id");

    HashMap ext = new HashMap();

    new CommDAO().update(request, response, "qingjiaxinxi", ext, true, false, "");
    HashMap mmm = new CommDAO().getmap(id, "qingjiaxinxi");

%>
<form action="qingjiaxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>" method="post" name="form1"
      onsubmit="return checkform();">
    修改请假信息:
    <br><br>

    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">

        <tr>
            <td>工号：</td>
            <td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>开始时间：</td>
            <td><input name='kaishishijian' type='text' id='kaishishijian' value='<%= mmm.get("kaishishijian")%>'
                       onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'/></td>
        </tr>
        <tr>
            <td>结束时间：</td>
            <td><input name='jieshushijian' type='text' id='jieshushijian' value='<%= mmm.get("jieshushijian")%>'
                       onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'/></td>
        </tr>
        <tr>
            <td>天数：</td>
            <td><input name='tianshu' type='text' id='tianshu' value='<%= mmm.get("tianshu")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>事由：</td>
            <td><input name='shiyou' type='text' id='shiyou' value='<%= mmm.get("shiyou")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>回复：</td>
            <td><input name='zhuangtai' type='text' id='zhuangtai' value='<%= mmm.get("zhuangtai")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="提交" onClick="return checkform();"/>
                <input type="reset" name="Submit2" value="重置"/></td>
        </tr>
    </table>
</form>

</body>
</html>


