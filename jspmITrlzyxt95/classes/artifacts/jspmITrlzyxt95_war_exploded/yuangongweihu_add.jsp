<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
<html>
<head>

    <title>员工维护</title>

    <LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="js/popup.js"></script>

</head>
<%
    String id = "";
    id = request.getParameter("id");
    HashMap mlbdq = new CommDAO().getmap(id, "yuangongxinxi");
    String gonghao = "";
    String bumen = "";
    String xingming = "";
    String xingbie = "";
    String chushengriqi = "";
    String xueli = "";
    String shouji = "";
    String youxiang = "";
    String dizhi = "";
    String hetonghao = "";
    String ruzhishijian = "";

    gonghao = (String) mlbdq.get("gonghao");
    bumen = (String) mlbdq.get("bumen");
    xingming = (String) mlbdq.get("xingming");
    xingbie = (String) mlbdq.get("xingbie");
    chushengriqi = (String) mlbdq.get("chushengriqi");
    xueli = (String) mlbdq.get("xueli");
    shouji = (String) mlbdq.get("shouji");
    youxiang = (String) mlbdq.get("youxiang");
    dizhi = (String) mlbdq.get("dizhi");
    hetonghao = (String) mlbdq.get("hetonghao");
    ruzhishijian = (String) mlbdq.get("ruzhishijian");


%>
<script language="javascript">

    function gow() {
        document.location.href = "yuangongweihu_add.jsp?id=<%=id%>";
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


        String sql = "update yuangongxinxi set zhuangtai='" + request.getParameter("shijian") + "'   where  gonghao='" + request.getParameter("gonghao") + "'";


        new CommDAO().commOper(sql);


        new CommDAO().insert(request, response, "yuangongweihu", ext, true, false, "");

    }

%>

<body>
<form action="yuangongweihu_add.jsp?f=f&id=<%=id%>" method="post" name="form1" onsubmit="return checkform();">
    添加员工维护:
    <br><br>
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">
        <tr>
            <td width="200">工号：</td>
            <td><input name='gonghao' type='text' id='gonghao' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.gonghao.value = '<%=gonghao%>';
        document.form1.gonghao.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">部门：</td>
            <td><input name='bumen' type='text' id='bumen' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.bumen.value = '<%=bumen%>';
        document.form1.bumen.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">姓名：</td>
            <td><input name='xingming' type='text' id='xingming' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.xingming.value = '<%=xingming%>';
        document.form1.xingming.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">性别：</td>
            <td><input name='xingbie' type='text' id='xingbie' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.xingbie.value = '<%=xingbie%>';
        document.form1.xingbie.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">出生日期：</td>
            <td><input name='chushengriqi' type='text' id='chushengriqi' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.chushengriqi.value = '<%=chushengriqi%>';
        document.form1.chushengriqi.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">学历：</td>
            <td><input name='xueli' type='text' id='xueli' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.xueli.value = '<%=xueli%>';
        document.form1.xueli.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">手机：</td>
            <td><input name='shouji' type='text' id='shouji' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.shouji.value = '<%=shouji%>';
        document.form1.shouji.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">邮箱：</td>
            <td><input name='youxiang' type='text' id='youxiang' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.youxiang.value = '<%=youxiang%>';
        document.form1.youxiang.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">地址：</td>
            <td><input name='dizhi' type='text' id='dizhi' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.dizhi.value = '<%=dizhi%>';
        document.form1.dizhi.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">合同号：</td>
            <td><input name='hetonghao' type='text' id='hetonghao' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.hetonghao.value = '<%=hetonghao%>';
        document.form1.hetonghao.setAttribute("readOnly", 'true');</script>
        <tr>
            <td width="200">入职时间：</td>
            <td><input name='ruzhishijian' type='text' id='ruzhishijian' value='' onblur=''
                       style='border:solid 1px #000000; color:#666666' readonly='readonly'/></td>
        </tr>
        <script language="javascript">document.form1.ruzhishijian.value = '<%=ruzhishijian%>';
        document.form1.ruzhishijian.setAttribute("readOnly", 'true');</script>
        <tr>
            <td>事件：</td>
            <td><select name='shijian' id='shijian'>
                <option value="离职">离职</option>
            </select></td>
        </tr>
        <tr>
            <td width="200">离职时间：</td>
            <td><input name='lizhishijian' type='text' id='lizhishijian' value='' onblur='' readonly='readonly'
                       onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})"
                       style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td width="200">离职原因：</td>
            <td><input name='lizhiyuanyin' type='text' id='lizhiyuanyin' value='' onblur='' size='50'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td width="200">备注：</td>
            <td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur=''
                          style='border:solid 1px #000000; color:#666666'></textarea></td>
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


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>

<script language=javascript>

    function checkform() {


        return true;
    }

    popheight = 450;
</script>  


