<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="xyconn.asp"-->
<!--#include file="Inc/xycms.asp" -->
<!--#include file="Inc/config.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/index.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/slideplay.js"></script>
<title>���߱���_<%=wzname%></title>
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
  <span class="stitle">���߱���</span>
  <span class="sdh">����ǰ����λ�ã�<a href="">��ҳ</a>&nbsp;&gt;&nbsp;<a href="online.asp" target="_self">���߱���</a></span>
  <div class="clear"></div>
</div>
<div class="dc">
  <div class="cleft">
    <div class="sub_body">
      <div class="sub_show">
       <form name="form" method="post" action="online.asp?act=ok" onSubmit="return checkform();"> 
            <table class="tablecss">
              <tr>
                <th><em>*</em>������</th>
                <td><input name="xy_name" maxLength=30 class="input_border" /><em>�����пո�ȷ��׼ȷ�������֤һ�¡�</em></td>
              </tr>
              <tr>
                <th><em>*</em>�Ա�</th>
                <td>
                  <select style="width:78px;" name="sex">
					<option selected value="">��ѡ��</option>
                    <OPTION value="��">��</OPTION> 
                    <OPTION value="Ů">Ů</OPTION>
			      </select>
                </td>
              </tr>
              <tr>
                <th><em>*</em>���䣺</th>
                <td><input name="xy_ages" size="3" maxLength=3 class="input_border"  />
                ��<em>ȷ��׼ȷ</em></td>
              </tr>
              <tr>
                <th>ѧ����</th>
                <td><select style="width:78px;" name="xy_xl">
					<option selected value="��ѡ��">��ѡ��</option>
                    <OPTION value="��������">��������</OPTION> 
                    <OPTION value="����">����</OPTION>
                    <OPTION value="��ר">��ר</OPTION>
                    <OPTION value="����">����</OPTION>
                    <OPTION value="��������">��������</OPTION>
			      </select></td>
              </tr>
              <tr>
                <th><em>*</em>���֤���룺</th>
                <td><input name="sfzh" class="input_border" style="width:154px;" maxLength="18" /><em>��׼ȷ��д!(����XҲ����д)ѧУ�������ã��������д��ȷ��</em></td>
              </tr>
              <tr>
                <th>�������ڣ�</th>
                <td><input name="data" type="text"  size="20"   onfocus="show_cele_date(data,'','',data)"/></td>
              </tr>
              <tr>
                <th><em>*</em>��Ըѧϰ�γ̣�</th>
                <td><input name="yykc" type="text"  size="20" class="input_border" /> <em>ѡ��������Ҫѧϰ�Ŀγ�����</em></td>
              </tr>
              <tr>
                <th><em>*</em>ͨ�ŵ�ַ��</th>
                <td><input name="address" maxlength="60"  class="input_border" style="width:255px;" /><em>ע�⣺���뱣֤׼ȷ��</em></td>
              </tr>
              <tr>
                <th><em>*</em>��ϵ�绰��</th>
                <td><input id="qh" name="qh" maxLength="5" class="input_border" style="width:44px;" />&nbsp;-&nbsp;<input id="tel" name="tel" maxLength="8" class="input_border" style="width:114px;" />
											<em>��������ȷ�����źͺ���,���޿���010-88888888</em></td>
              </tr>
              <tr>
                <th><em>*</em>�ֻ���</th>
                <td><input id="shouji" name="shouji" maxLength="11" class="input_border" style="width:114px;" />
											<em>����ȷ��д��ȷ������,������ϵ֪ͨ</em></td>
              </tr>
              <tr>
                <td colspan="2" align="center"><input type="submit" value="�ύ��Ϣ" /> <input type="reset" value="ȫ����д" /></td>
              </tr>
            </table>
            </form>
            <h4 align="center" style="font-size:12px; color:#5F9EE4;">��������Ϣ����Ϊ����ѧ��׼ȷ���ϣ������ȷ�������ټ��һ��ɣ���</h4>
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
<%
if Request.QueryString("act")="ok" then
set rs=server.createobject("adodb.recordset")
sql="select * from [online]"
rs.open sql,conn,1,3
rs.addnew
rs("xy_name")=trim(request.form("xy_name"))
rs("sex")=request.form("sex")
rs("xy_ages")=trim(request.form("xy_ages"))
rs("xy_xl")=request.form("xy_xl")
rs("sfzh")=trim(request.form("sfzh"))
rs("data")=trim(request.form("data"))
rs("address")=trim(request.form("address"))
rs("qh")=trim(request.form("qh"))
rs("tel")=trim(request.form("tel"))
rs("yykc")=trim(request.form("yykc"))
rs("shouji")=trim(request.form("shouji"))
rs.update
rs.close
set rs=nothing
Response.Write "<script>alert('��ϲ�㣬������Ϣ��ӳɹ��������ظ��ύ��');window.location.href='index.asp';</script>"
end if
%>