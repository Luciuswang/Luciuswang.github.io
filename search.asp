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
<title>������Ϣ�б�_<%=wzname%></title>
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
  <span class="stitle">������Ϣ���</span>
  <span class="sdh">����ǰ����λ�ã�<a href="">��ҳ</a>&nbsp;&gt;&nbsp;��Ϣ�б�</span>
  <div class="clear"></div>
</div>
<div class="dc">
  <div class="cleft">
    <div class="sub_body">
      <div class="sub_nlist">
        <ul>
              <li>�������Ϣ��ʾ������������ؼ��ʲ�ѯ��</li>
        </ul>
        <div class="clear"></div>
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
