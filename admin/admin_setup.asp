<!--#include file="../xyconn.asp" -->
<!--#include file="../inc/config.asp" -->
<!--#include file="seeion.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ϵͳ����</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-size:12px;
}
.button{font-size:12px; background:url(button.gif); border:1px solid #BDC5CA; height:23px;  color:#333333}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE5 {color: #FF0000}
-->
</style>

</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">�㵱ǰ��λ��</span>��[��վϵͳ����]</td>
              </tr>
            </table></td>
            <td width="54%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="images/tab_12.gif">&nbsp;</td>
        <td>
        <form  name="addform" method="post" action="admin_setup.asp?act=ok">
        <table width="100%" border="0" cellspacing="5" cellpadding="0">
              <tr>
                <td width="11%"><span class="STYLE3">��վ���ƣ�</span></td>
                <td width="90%"><input name="wzname" type="text" value="<%=wzname%>" size="50" /> </td>
              </tr>
              <tr>
                <td width="11%"><span class="STYLE3">��վ������</span></td>
                <td width="90%"><input name="descriptions" type="text" id="descriptions" value="<%=descriptions%>" size="50" /></td>
              </tr>
              <tr>
                <td width="11%"><span class="STYLE3">��վ�ؼ��֣�</span></td>
                <td width="90%"><input name="keywords" type="text" value="<%=keywords%>" size="50" /></td>
              </tr>
              <tr>
                <td width="11%"><span class="STYLE3">��վ������</span></td>
                <td width="90%"><input name="wzurl" type="text" value="<%=wzurl%>" size="50" /></td>
              </tr>
               <tr>
                <td width="11%"><span class="STYLE3">��վICP�ţ�</span></td>
                <td width="90%"><input name="icp" type="text" value="<%=icp%>" size="50" /></td>
               </tr>
               <tr>
                <td width="11%"><span class="STYLE3">LOGOͼƬ��</span></td>
                <td width="90%"><iframe src='UpLoadPic.asp?id=wzlogo&value=<%=wzlogo%>' frameborder=0 scrolling=no width='100%' HEIGHT='25'></iframe><input type="hidden" name="wzlogo" value="<%=wzlogo%>" /> </td>
              </tr>
              <tr>
                <td width="11%"><span class="STYLE3">��ϵ��������</span></td>
                <td width="90%"><input name="managename" type="text" value="<%=managename%>" size="50" /></td>
              </tr>
               <tr>
                <td width="11%"><span class="STYLE3">���䣺</span></td>
                <td width="90%"><input name="email" type="text" value="<%=email%>" size="50" /></td>
              </tr>
               <tr>
                <td width="11%"><span class="STYLE3">�绰��</span></td>
                <td width="90%"><input name="telnum" type="text" value="<%=telnum%>" size="20" />&nbsp;&nbsp;&nbsp;<span class="STYLE3">�ֻ���</span><input name="phonenum" type="text" value="<%=phonenum%>" size="20" /></td>
              </tr>
               <tr>
                <td width="11%"><span class="STYLE3">���棺</span></td>
                <td width="90%"><input name="faxnum" type="text" value="<%=faxnum%>" size="20" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE3">QQ��</span><input name="qqnum" type="text" value="<%=qqnum%>" size="20" /></td>
              </tr>
               <tr>
                <td width="11%"><span class="STYLE3">��ϵ��ַ��</span></td>
                <td width="90%"><input name="address" type="text" value="<%=address%>" size="50" /></td>
              </tr>
              <tr>
                <td width="10%"><span class="STYLE3">�����Ƿ���ˣ�</span></td>
                <td width="90%"><input type="radio" name="gbook_sh" value="1" <%if gbook_sh=1 then%>checked<%end if%> />
������ˡ�
  <input type="radio" name="gbook_sh" value="0" <%if gbook_sh=0 then%>checked<%end if%> />
��Ҫ���</td>
              </tr>
              <tr>
                <td width="11%"><span class="STYLE3">�Ƿ�ر���վ��</span></td>
                <td width="90%"><input type="radio" name="on_run" value="0" <%if on_run=0 then%>checked<%end if%> />
���š�
  <input type="radio" name="on_run" value="1" <%if on_run=1 then%>checked<%end if%> />
�ر�</td>
              </tr>
              <tr>
                <td width="11%"><span class="STYLE3">��վ�ر�˵����</span></td>
                <td width="90%"><textarea name="off_dc" cols="50" rows="4"><%=off_dc%></textarea> [��վ�ر�ԭ������]</td>
              </tr>
              <tr>
                <td width="11%">&nbsp;</td>
                <td width="90%"><input type="submit" name="button" id="button" value="����ϵͳ����" class="button" /></td>
              </tr>
        </table>
        </form>
        </td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="images/tab_18.gif" width="12" height="35" /></td>
        <td>&nbsp;</td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
<% 
if Request.QueryString("act")="ok" then
set fso=Server.CreateObject("Scripting.FileSystemObject")
set hf=fso.CreateTextFile(Server.mappath("../inc/config.asp"),true)
hf.write "<" & "%" & vbcrlf
hf.write "Const wzname=" & chr(34) & trim(request.form("wzname")) & chr(34) & "'��վ����" & vbcrlf
hf.write "Const descriptions=" & chr(34) & trim(request.form("descriptions")) & chr(34) & "'��վ����" & vbcrlf
hf.write "Const keywords=" & chr(34) & trim(request.form("keywords")) & chr(34) & "'��վ�ؼ���" & vbcrlf
hf.write "Const wzurl=" & chr(34) & trim(request.form("wzurl")) & chr(34) & "'��վ��ַ" & vbcrlf
hf.write "Const wzlogo=" & chr(34) & trim(request.form("wzlogo")) & chr(34) & "'��վLOGOͼƬ·��" & vbcrlf
hf.write "Const logow=" & chr(34) & trim(request.form("logow")) & chr(34) & "'LOGOͼƬ��" & vbcrlf
hf.write "Const logoh=" & chr(34) & trim(request.form("logoh")) & chr(34) & "'LOGOͼƬ��" & vbcrlf
hf.write "Const icp=" & chr(34) & trim(request.form("icp")) & chr(34) & "'��ַ������" & vbcrlf
hf.write "Const managename=" & chr(34) & trim(request.form("managename")) & chr(34) & "'��վ��ϵ��" & vbcrlf
hf.write "Const email=" & chr(34) & trim(request.form("email")) & chr(34) & "'��ϵ����" & vbcrlf
hf.write "Const telnum=" & chr(34) & trim(request.form("telnum")) & chr(34) & "'��ϵ�绰" & vbcrlf
hf.write "Const phonenum=" & chr(34) & trim(request.form("phonenum")) & chr(34) & "'��ϵ�ֻ�" & vbcrlf
hf.write "Const faxnum=" & chr(34) & trim(request.form("faxnum")) & chr(34) & "'����" & vbcrlf
hf.write "Const qqnum=" & chr(34) & trim(request.form("qqnum")) & chr(34) & "'��ϵQQ" & vbcrlf
hf.write "Const address=" & chr(34) & trim(request.form("address")) & chr(34) & "'��ϵ��ַ" & vbcrlf
hf.write "Const gbook_sh=" & chr(34) & trim(request.form("gbook_sh")) & chr(34) & "'������ѯ�Ƿ���ˣ�0-����ˣ�1-��ˡ�" & vbcrlf
hf.write "Const on_run=" & chr(34) & trim(request.form("on_run")) & chr(34) & "'��վ�Ƿ�رգ�0-���ţ�1-�رա�" & vbcrlf
hf.write "Const off_dc=" & chr(34) & trim(request.form("off_dc")) & chr(34) & "'��վ�ر�˵��" & vbcrlf
hf.write "%" & ">"
hf.close
set hf=nothing
set fso=Nothing
response.Write("<script>alert('��վ�������ø��³ɹ���');window.location.href='admin_setup.asp';</script>")
End If
%>
