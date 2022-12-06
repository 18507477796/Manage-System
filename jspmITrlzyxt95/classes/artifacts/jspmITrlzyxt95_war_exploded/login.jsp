<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>用户登录</TITLE>
	<LINK
			href="images/Default.css" type=text/css rel=stylesheet>
	<LINK
			href="images/xtree.css" type=text/css rel=stylesheet>
	<LINK
			href="images/User_Login.css" type=text/css rel=stylesheet>
	<META http-equiv=Content-Type content="text/html; charset=gb2312">
	<META content="MSHTML 6.00.6000.16674" name=GENERATOR>
</HEAD>
<BODY id=userlogin_body>
<form action="jspmITrlzyxt95?ac=adminlogin&a=a" method="post" name="form1" style="display: inline">
	<DIV></DIV>
	<DIV id=user_login>
		<DL>
			<DD id=user_top>
				<UL>
					<LI class=user_top_l></LI>
					<LI class=user_top_c></LI>
					<LI class=user_top_r></LI>
				</UL>
			<DD id=user_main>
				<UL>
					<LI class=user_main_l></LI>
					<LI class=user_main_c>
						<DIV class=user_main_box>
							<UL>
								<LI class=user_main_text>用户名：</LI>
								<LI class=user_main_input><INPUT class=TxtUserNameCssClass id=username
																 maxLength=20 name=username></LI>
							</UL>
							<UL>
								<LI class=user_main_text>密 码：</LI>
								<LI class=user_main_input><INPUT class=TxtPasswordCssClass id=TxtPassword
																 type=password name=pwd></LI>
							</UL>
							<UL>
								<LI class=user_main_text>权限：</LI>
								<LI class=user_main_input>
									<select name="cx" id="cx">
										<option value="管理员">管理员</option>
										<option value="员工">员工</option>
									</select>
								</LI>
							</UL>
							<UL>
								<LI class=user_main_text>验证码：</LI>
								<LI class=user_main_input>
									<input name="pagerandom" type="text" id="pagerandom"
										   style=" height:20px; border:solid 1px #000000; color:#666666; width:50px"/></LI> &nbsp &nbsp &nbsp
								<LI><a href="javascript:loadimage();">
									<img alt="看不清请点我！" name="randImage"
										 id="randImage" src="image.jsp" width="60"
										 height="20" border="1" align="absmiddle">
								</a></LI>

							</UL>
						</DIV>
					</LI>
					<LI class=user_main_r><INPUT class=IbtnEnterCssClass id=IbtnEnter
												 style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
												 onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("IbtnEnter", "", true, "", "", false, false))'
												 type=image src="images/user_botton.gif" name=IbtnEnter></LI>
				</UL>
			<DD id=user_bottom>
			</DD>
		</DL>
	</DIV>
	<SPAN id=ValrUserName
		  style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrPassword
														 style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrValidateCode
																										style="DISPLAY: none; COLOR: red"></SPAN>
	<DIV id=ValidationSummary1 style="DISPLAY: none; COLOR: red"></DIV>

	<DIV></DIV>

</FORM></BODY>
</HTML>
