<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>
    <title>文件信息</title>

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

    new CommDAO().update(request, response, "wenjianxinxi", ext, true, false, "");
    HashMap mmm = new CommDAO().getmap(id, "wenjianxinxi");

%>
<form action="wenjianxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>" method="post" name="form1"
      onsubmit="return checkform();">
    修改文件信息:
    <br><br>

    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">

        <tr>
            <td>文件编号：</td>
            <td><input name='wenjianbianhao' type='text' id='wenjianbianhao' value='<%= mmm.get("wenjianbianhao")%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>文件名称：</td>
            <td><input name='wenjianmingcheng' type='text' id='wenjianmingcheng'
                       value='<%= mmm.get("wenjianmingcheng")%>' style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>文件：</td>
            <td><input name='wenjian' type='text' id='wenjian' size='50' value='<%= mmm.get("wenjian")%>'
                       style='border:solid 1px #000000; color:#666666'/>&nbsp;<input type='button' value='上传'
                                                                                     onClick="up('wenjian')"
                                                                                     style='border:solid 1px #000000; color:#666666'/>
            </td>
        </tr>
        <tr>
            <td>文件简介：</td>
            <td><textarea name='wenjianjianjie' cols='50' rows='5' id='wenjianjianjie'
                          style='border:solid 1px #000000; color:#666666'><%=mmm.get("wenjianjianjie")%></textarea></td>
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


