<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="Xyconn.asp"-->
<!--#include file="Inc/xycms.asp" -->
<!--#include file="Inc/config.asp" -->
<%
id=request.QueryString("id")
if id="" or not isnumeric(id) then
response.write "<script>alert('����!�Ƿ�������');window.location.href='index.asp';</script>" 
Response.End()
end if
set rs=server.createobject("adodb.recordset") 
exec="select * from [down] where id="& id
rs.open exec,conn,1,1
if rs.eof then
response.Write "<div style=""padding:10px"">û�������Ϣ��</a>"
response.End()
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/index.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/slideplay.js"></script>
<title><%=rs("title")%>_<%=wzname%></title>
<!--[if lte IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]-->
</head>
<body>
<!--#include file="head.asp"-->

<div class="sub_title">
  <span class="stitle">��Ϣ��ϸ</span>
  <span class="sdh">����ǰ����λ�ã�<a href="">��ҳ</a>&nbsp;&gt;&nbsp;<a href="down.asp" target="_self">��������</a>&nbsp;&gt;&nbsp;��Ϣ��ϸ</span>
  <div class="clear"></div>
</div>
<div class="dc">
  <div class="cleft">
    <div class="sub_body">
      <div class="sub_show">
        <h1 class="title"><%=rs("title")%></h1>
        <div class="info">
          <small>��Դ��</small><%=rs("ly")%>
          <small>���ߣ�</small><%=rs("zz")%>
          <small>����ʱ�䣺</small><%=rs("data")%>
        </div>
        <p style=" font-size:14px; font-weight:bold; line-height:22px; color:#25270A; border-bottom:1px #A5A5A5 solid;">��ϸ����</p>
        <div style="width:100%; line-height:30px;">
        <%=rs("body")%>
        </div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" >
          <tr>
            <td height="80"><div align="right"><a href="<%=rs("url")%>" target="_blank"><img src="images/download_s.png" /></a></div></td>
          </tr>
        </table>
        <% rs.close
		set rs=nothing
		%>
      </div>
    </div>
  </div>
  <div class="cright">
    <div class="contact_t">
      <div class="title">��������</div>
    </div>
    <div class="contact_c">
      <div class="contact">
        <ul>
          <%=xycms_commonlist()%>
        </ul>
      </div>
    </div>
    <div class="contact_t">
      <div class="title">��ϵ����</div>
    </div>
    <div class="contact_c">
      <div class="contact">
        <ul>
          <%=xycms_contact()%>
        </ul>
      </div>
    </div>
  </div>
  <div class="clear"></div>
</div>
<!--#include file="foot.asp"-->
</body>
</html>