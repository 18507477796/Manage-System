<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>员工维护</title>

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

    new CommDAO().update(request, response, "yuangongweihu", ext, true, false, "");
    HashMap mmm = new CommDAO().getmap(id, "yuangongweihu");

%>
<form action="yuangongweihu_updt.jsp?f=f&id=<%=mmm.get("id")%>" method="post" name="form1"
      onsubmit="return checkform();">
    修改员工维护:
    <br><br>

    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">

        <tr>
            <td>工号：</td>
            <td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>部门：</td>
            <td><input name='bumen' type='text' id='bumen' value='<%= mmm.get("bumen")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><input name='xingbie' type='text' id='xingbie' value='<%= mmm.get("xingbie")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>出生日期：</td>
            <td><input name='chushengriqi' type='text' id='chushengriqi' value='<%= mmm.get("chushengriqi")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>学历：</td>
            <td><input name='xueli' type='text' id='xueli' value='<%= mmm.get("xueli")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>手机：</td>
            <td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input name='youxiang' type='text' id='youxiang' value='<%= mmm.get("youxiang")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>地址：</td>
            <td><input name='dizhi' type='text' id='dizhi' value='<%= mmm.get("dizhi")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>合同号：</td>
            <td><input name='hetonghao' type='text' id='hetonghao' value='<%= mmm.get("hetonghao")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>入职时间：</td>
            <td><input name='ruzhishijian' type='text' id='ruzhishijian' value='<%= mmm.get("ruzhishijian")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>事件：</td>
            <td><select name='shijian' id='shijian'>
                <option value="离职">离职</option>
            </select></td>
        </tr>
        <script language="javascript">document.form1.shijian.value = '<%=mmm.get("shijian")%>';</script>
        <tr>
            <td>离职时间：</td>
            <td><input name='lizhishijian' type='text' id='lizhishijian' value='<%= mmm.get("lizhishijian")%>'
                       onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'/></td>
        </tr>
        <tr>
            <td>离职原因：</td>
            <td><input name='lizhiyuanyin' type='text' id='lizhiyuanyin' size='50' value='<%=mmm.get("lizhiyuanyin")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>备注：</td>
            <td><textarea name='beizhu' cols='50' rows='5' id='beizhu'
                          style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td>
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


