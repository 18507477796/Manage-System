<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>

    <title>考勤信息</title>

    <LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="js/popup.js"></script>

</head>
<%
    String id = "";


%>
<script language="javascript">

    function gow() {
        document.location.href = "kaoqinxinxi_add.jsp?id=<%=id%>&gonghao=" + document.form1.gonghao.value;
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
    new CommDAO().insert(request, response, "kaoqinxinxi", ext, true, false, "");
%>

<body>
<form action="kaoqinxinxi_add.jsp?f=f&id=<%=id%>" method="post" name="form1" onsubmit="return checkform();">
    添加考勤信息:
    <br><br>
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">
        <tr>
            <td>工号：</td>
            <td><%=Info.getselectsl("gonghao", "yuangongxinxi", "gonghao")%>&nbsp;*<label id='clabelgonghao'/></td>
        </tr>
        <tr>
            <td width="200">部门：</td>
            <td><input name='bumen' type='text' id='bumen' style='border:solid 1px #000000; color:#666666'>&nbsp;*<label
                    id='clabelbumen'/></td>
        </tr>
        <tr>
            <td width="200">姓名：</td>
            <td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666'>&nbsp;*<label
                    id='clabelxingming'/></td>
        </tr>
        <tr>
            <td>月份：</td>
            <td><select name='yuefen' id='yuefen'>
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
            </select></td>
        </tr>
        <tr>
            <td width="200">正常上班：</td>
            <td><input name='zhengchangshangban' type='text' id='zhengchangshangban' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td width="200">加班：</td>
            <td><input name='jiaban' type='text' id='jiaban' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td width="200">请假：</td>
            <td><input name='qingjia' type='text' id='qingjia' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td width="200">旷工：</td>
            <td><input name='kuanggong' type='text' id='kuanggong' value='' onblur=''
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
    document.form1.bumen.value = "<%=mmm.get("bumen")%>";
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
        var bumenobj = document.getElementById("bumen");
        if (bumenobj.value == "") {
            document.getElementById("clabelbumen").innerHTML = "&nbsp;&nbsp;<font color=red>请输入部门</font>";
            return false;
        } else {
            document.getElementById("clabelbumen").innerHTML = "  ";
        }
        var xingmingobj = document.getElementById("xingming");
        if (xingmingobj.value == "") {
            document.getElementById("clabelxingming").innerHTML = "&nbsp;&nbsp;<font color=red>请输入姓名</font>";
            return false;
        } else {
            document.getElementById("clabelxingming").innerHTML = "  ";
        }


        return true;
    }

    popheight = 450;
</script>  


