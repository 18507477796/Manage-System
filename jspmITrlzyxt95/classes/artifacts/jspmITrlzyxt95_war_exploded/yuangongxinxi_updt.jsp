<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>员工信息</title>

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

    new CommDAO().update(request, response, "yuangongxinxi", ext, true, false, "");
    HashMap mmm = new CommDAO().getmap(id, "yuangongxinxi");

%>
<form action="yuangongxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>" method="post" name="form1"
      onsubmit="return checkform();">
    修改员工信息:
    <br><br>

    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">

        <tr>
            <td>工号：</td>
            <td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>部门：</td>
            <td><%=Info.getselect("bumen", "bumenxinxi", "bumen")%>
            </td>
        </tr>
        <script language="javascript">document.form1.bumen.value = '<%=mmm.get("bumen")%>';</script>
        <tr>
            <td>姓名：</td>
            <td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><select name='xingbie' id='xingbie'>
                <option value="男">男</option>
                <option value="女">女</option>
            </select></td>
        </tr>
        <script language="javascript">document.form1.xingbie.value = '<%=mmm.get("xingbie")%>';</script>
        <tr>
            <td>出生日期：</td>
            <td><input name='chushengriqi' type='text' id='chushengriqi' value='<%= mmm.get("chushengriqi")%>'
                       onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'/></td>
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
            <td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=mmm.get("dizhi")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>合同号：</td>
            <td><input name='hetonghao' type='text' id='hetonghao' value='<%= mmm.get("hetonghao")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>状态：</td>
            <td><select name='zhuangtai' id='zhuangtai'>
                <option value="在职">在职</option>
                <option value="离职">离职</option>
            </select></td>
        </tr>
        <script language="javascript">document.form1.zhuangtai.value = '<%=mmm.get("zhuangtai")%>';</script>
        <tr>
            <td>入职时间：</td>
            <td><input name='ruzhishijian' type='text' id='ruzhishijian' value='<%= mmm.get("ruzhishijian")%>'
                       onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'/></td>
        </tr>
        <tr>
            <td>简介：</td>
            <td><textarea name='jianjie' cols='50' rows='5' id='jianjie'
                          style='border:solid 1px #000000; color:#666666'><%=mmm.get("jianjie")%></textarea></td>
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


