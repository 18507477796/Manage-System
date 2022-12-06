<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>

    <title>请假信息</title>

    <LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="js/popup.js"></script>

</head>
<%
    String id = "";
    HashMap mssdq = new CommDAO().getmaps("gonghao", (String) request.getSession().getAttribute("username"), "yuangongxinxi");
    String xingming = "";


    xingming = (String) mssdq.get("xingming");

%>
<script language="javascript">

    function gow() {
        document.location.href = "qingjiaxinxi_add.jsp?id=<%=id%>&gonghao=" + document.form1.gonghao.value;
    }

    function hsgxia2shxurxu(nstr, nwbk) {
        if (eval("form1." + nwbk).value.indexOf(nstr) >= 0) {
            eval("form1." + nwbk).value = eval("form1." + nwbk).value.replace(nstr + "；", "");
        }
        else {
            eval("form1." + nwbk).value = eval("form1." + nwbk).value + nstr + "；";
        }
    }
</script>

<%
    HashMap ext = new HashMap();
    if (request.getParameter("f") != null) {


    }
    new CommDAO().insert(request, response, "qingjiaxinxi", ext, true, false, "");
%>

<body>
<form action="qingjiaxinxi_add.jsp?f=f&id=<%=id%>" method="post" name="form1" onsubmit="return checkform();">
    添加请假信息:
    <br><br>
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">
        <tr>
            <td>工号：</td>
            <td><input name='gonghao' type='text' id='gonghao' onblur='checkform()'
                       style='border:solid 1px #000000; color:#666666'
                       value='<%=request.getSession().getAttribute("username")%>' readonly="readonly"/>&nbsp;*<label
                    id='clabelgonghao'/></td>
        </tr>
        <tr>
            <td width="200">姓名：</td>
            <td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666'>&nbsp;*<label
                    id='clabelxingming'/></td>
        </tr>
        <script language="javascript">document.form1.xingming.value = '<%=xingming%>';
        document.form1.xingming.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">开始时间：</td>
            <td><input name='kaishishijian' type='text' id='kaishishijian' value='' onblur='checkform()'
                       readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})"
                       style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*<label
                    id='clabelkaishishijian'/></td>
        </tr>
        <tr>
            <td width="200">结束时间：</td>
            <td><input name='jieshushijian' type='text' id='jieshushijian' value='' onblur='checkform()'
                       readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})"
                       style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*<label
                    id='clabeljieshushijian'/></td>
        </tr>
        <tr>
            <td width="200">天数：</td>
            <td><input name='tianshu' type='text' id='tianshu' value='' onblur='checkform()'
                       style='border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabeltianshu'/></td>
        </tr>
        <tr>
            <td width="200">事由：</td>
            <td><input name='shiyou' type='text' id='shiyou' value='' onblur='' size='50'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr style='display:none'>
            <td width="200">回复：</td>
            <td><input name='zhuangtai' type='text' id='zhuangtai' value='' onblur='' size='50'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="提交" style='border:solid 1px #000000; color:#666666'/>
                <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
    </table>
</form>

</body>
</html>

<%
    if (request.getParameter("gonghao") == null || request.getParameter("gonghao").equals("")) {
    } else {

        HashMap mmm = new CommDAO().getmaps("gonghao", request.getParameter("gonghao"), "yuangongxinxi");
%>
<script language="javascript">
    document.form1.gonghao.value = "<%=mmm.get("gonghao")%>";
    document.form1.xingming.value = "<%=mmm.get("xingming")%>";
    //suilafuzhi

</script>
<%
    }
%>


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>

<script language=javascript>

    function checkform() {

        var gonghaoobj = document.getElementById("gonghao");
        if (gonghaoobj.value == "") {
            document.getElementById("clabelgonghao").innerHTML = "&nbsp;&nbsp;<font color=red>请输入工号</font>";
            return false;
        } else {
            document.getElementById("clabelgonghao").innerHTML = "  ";
        }
        var xingmingobj = document.getElementById("xingming");
        if (xingmingobj.value == "") {
            document.getElementById("clabelxingming").innerHTML = "&nbsp;&nbsp;<font color=red>请输入姓名</font>";
            return false;
        } else {
            document.getElementById("clabelxingming").innerHTML = "  ";
        }
        var kaishishijianobj = document.getElementById("kaishishijian");
        if (kaishishijianobj.value == "") {
            document.getElementById("clabelkaishishijian").innerHTML = "&nbsp;&nbsp;<font color=red>请输入开始时间</font>";
            return false;
        } else {
            document.getElementById("clabelkaishishijian").innerHTML = "  ";
        }
        var jieshushijianobj = document.getElementById("jieshushijian");
        if (jieshushijianobj.value == "") {
            document.getElementById("clabeljieshushijian").innerHTML = "&nbsp;&nbsp;<font color=red>请输入结束时间</font>";
            return false;
        } else {
            document.getElementById("clabeljieshushijian").innerHTML = "  ";
        }
        var tianshuobj = document.getElementById("tianshu");
        if (tianshuobj.value == "") {
            document.getElementById("clabeltianshu").innerHTML = "&nbsp;&nbsp;<font color=red>请输入天数</font>";
            return false;
        } else {
            document.getElementById("clabeltianshu").innerHTML = "  ";
        }
        var tianshuobj = document.getElementById("tianshu");
        if (tianshuobj.value != "") {
            if (/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(tianshuobj.value)) {
                document.getElementById("clabeltianshu").innerHTML = "";
            } else {
                document.getElementById("clabeltianshu").innerHTML = "&nbsp;&nbsp;<font color=red>必需数字型</font>";
                return false;
            }
        }


        return true;
    }

    popheight = 450;
</script>  


