<!--#include file="../xyconn.asp" -->
<!--#include file="seeion.asp" -->
<% 
id=request("id")
title=request.form("title")
body=request.form("body")
ly=request.form("ly")
zz=request.form("zz")

SQL="Select * from [pxxm] where id="&id
set rs=server.createobject("adodb.recordset")
rs.open SQL,conn,1,3
if rs.eof and rs.bof then
Response.Write "<script>alert('��������ȷ��IDֵ�����ڣ�');history.go(-1);</script>" 
Response.End()
end if
if title=""  then 
response.Write("<script language=javascript>alert('��Ϣ���ⲻ��Ϊ��!');history.go(-1)</script>") 
response.end 
end if
if body=""  then 
response.Write("<script language=javascript>alert('��Ϣ���ݲ���Ϊ��!');history.go(-1)</script>") 
response.end 
end if
rs("title")=title
rs("body")=body
rs("ly")=ly
rs("zz")=zz
rs("data")=now()
rs.update 
rs.close 
response.write "<script>alert('��ϲ�㣬��Ϣҳ�������޸ĳɹ���');window.location.href='manage_pxxm.asp';</script>" 

%> 
