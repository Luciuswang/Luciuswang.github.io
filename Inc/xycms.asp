<%
'=================================================
'XYCMS��ҵ��վϵͳ ��Ȩ���� ����֧��QQ��364500483
'=================================================
if on_run=1 then
response.Write off_dc
response.End()
end if
'=================================================
function xycms_menu(xyview)
dim menu
set menu=server.CreateObject("adodb.recordset")
menu.open "select * from menu where view="&xyview&" order by pl_id asc",conn,1,1
while not menu.eof
response.Write("<li><a href="""&menu("url")&""" target="""&menu("open_m")&"""  title="""&menu("title")&""">"&menu("title")&"</a></li>")
menu.movenext
wend
menu.close
set menu=nothing
end function
'=================================================
'��������xycms_flash
'���ܣ�����ͼ����
'���ò�����xypicw,���ȣ�xypich,���
'=================================================
function xycms_flash(xypicw,xypich) %>
<script type=text/javascript>
        <!--
        var focus_width=<%=xypicw%>//ͼƬ��
        var focus_height=<%=xypich%>//ͼƬ��
        var text_height=0//������ʾ���ֱ���߶�,���Ϊ20���������ʾ����ֵ��Ϊ0���ɣ�
        var swf_height = focus_height+text_height
        //var pics=""
        //var links=""
        //var texts=""
		<%
		set db=conn.execute("select * from [jdt] order by pl_id asc")
			i=0
			do while not db.eof
				 pics=pics&"|"&db("img")
				 links=links&"|"&db("link")
				 texts=texts&"|"&db("title")
				db.moveNext
				i=i+1
			loop
response.write "var pics='"&right(pics,len(pics)-1)&"'"&vbcrlf
response.write "var links='"&right(links,len(links)-1)&"'"&vbcrlf
response.write "var texts='"&right(texts,len(texts)-1)&"'"&vbcrlf
		%>
        document.write('<object ID="focus_flash" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
        document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/play.swf"><param name="quality" value="high"><param name="bgcolor" value="#FFFFFF">');
        document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
        document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
        document.write('<embed ID="focus_flash" src="images/play.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#C5C5C5" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');document.write('</object>'); 
        //-->
</script>
<% end function
'=================================================
'��������xycms_commonlist
'���ܣ���ҵ������
'���ò�������
'=================================================
function xycms_commonlist()
set commonlist=server.CreateObject("adodb.recordset")
commonlist.open "select * from common order by pl_id asc",conn,1,1
if commonlist.eof and commonlist.bof then
response.Write("&nbsp;���޼�¼ !")
end if
while not commonlist.eof
response.Write("<li><a href=""common.asp?id="&commonlist("id")&""" title=""" & commonlist("title") &""">"  & commonlist("title") & "</a></li>")
commonlist.movenext
wend
commonlist.close
set commonlist=nothing
end function

function xycms_toplist(xytop,xyfl,xynum)
set toplist=server.CreateObject("adodb.recordset")
toplist.open "select top "&xytop&" * from news where ssfl="&xyfl&" order by id desc",conn,1,1
if toplist.eof and toplist.bof then
response.Write("&nbsp;���޼�¼ !")
end if
while not toplist.eof
response.Write("<li><a href=""news_detail.asp?id="&toplist("id")&""" title=""" & toplist("title") &""" style=""color:"&toplist("color")&";"">"&left(toplist("title"),xynum) & "</a> &nbsp;<span>"&formatdatetime(toplist("data"),2)&"</span></li>")
toplist.movenext
wend
toplist.close
set toplist=nothing
end function

'=================================================
'��������xycms_news
'���ܣ���������
'���ò�����xytop,����������xytitle,����������xyfl�����ŷ��ࣻxytj���Ƿ��Ƽ���xyorder������˳��
'=================================================
function xycms_news(xytop,xytitle,xyfl,xyorder)
Dim xycms_fl,xycms_tj,xycms_order
select case xyfl
       case 0
	   xycms_fl=""
	   case else
	   xycms_fl="and ssfl="&xyfl&""
end select
select case xyorder
       case 0
	   xycms_order="order by id desc"
	   case 1
	   xycms_order="order by hit desc"
	   case else
	   xycms_order=""
end select
set news=server.CreateObject("adodb.recordset")
  sql="select top "&xytop&" * from [news] where len(img)<4 and passed=1 "&xycms_fl&" "&xycms_order&""
news.open sql,conn,1,1
if news.eof and news.bof then
response.Write("&nbsp;���޸��������� !")
else
while not news.eof
dim url,color
if IsNull(news("url")) or trim(news("url")&"")="" then
url="news_detail.asp?id="&news("id")&""
else
url=""&news("url")&""
end if
if IsNull(news("color")) or trim(news("color")&"")="" then
color="#5D5D5D"
else
color=""&news("color")&""
end if 
%>
<li><span><%=FormatDateTime(news("data"),2)%></span> <a href="<%=url%>" style="color:<%=color%>;" title="<%=news("title")%>"><%=left(news("title"),xytitle)%></a></li>
<% news.movenext
wend
news.close
set news=nothing
end if
end function 

'=================================================
'��������xycms_aboutus
'���ܣ������������ݵ���
'���ò�����newsid,ID��ţ�xynum,��ʾ����
'=================================================
function xycms_aboutus(newsid,xynum)
 set rs=server.createobject("adodb.recordset") 
   exec="select * from common where id="&newsid&" order by id desc  "
   rs.open exec,conn,1,1 
   if rs.eof and rs.bof then
   response.Write("&nbsp;������Ϣ��¼ !")
   else
   response.Write(""&strvalue(rs("body"),xynum)&"")
   rs.close
   set rs=nothing
   end if 
end function

'=================================================
'��������xycms_newsfllist
'���ܣ����ŷ���
'=================================================
function xycms_newsfllist()
set newsfl=server.CreateObject("adodb.recordset")
newsfl.open "select * from news_fl order by pl_id asc",conn,1,1
if newsfl.eof and newsfl.bof then
response.Write("&nbsp;������Ϣ��¼ !")
end if
while not newsfl.eof
response.Write("<li><a href=""news.asp?id="&newsfl("id")&""" title=""" & newsfl("title") &""">"  & newsfl("title") & "</a> </li>")
newsfl.movenext
wend
newsfl.close
set newsfl=nothing
end function

function xycms_fwxmlist(xytop)
set fwxmlist=server.CreateObject("adodb.recordset")
fwxmlist.open "select top "&xytop&" * from [pxxm] order by id desc",conn,1,1
if fwxmlist.eof and fwxmlist.bof then
response.Write("&nbsp;������Ϣ��¼ !")
end if
while not fwxmlist.eof
response.Write("<li><a href=""pxxm_detail.asp?id="&fwxmlist("id")&""" title=""" & fwxmlist("title") &""">"  & fwxmlist("title") & "</a> </li>")
fwxmlist.movenext
wend
fwxmlist.close
set fwxmlist=nothing
end function

'=================================================
'��������xycms_contact
'���ܣ���ϵ��ʽ
'���ò�����xytop,����������xytitle,��������
'=================================================
function xycms_contact()%>
<li><strong><%=wzname%></strong></li>
<li>��ϵ��ַ��<%=address%></li>
<li>�� ����<%=telnum%></li>
<li>�� �棺<%=faxnum%></li>
<% end function 

function xycms_link()
set link=server.CreateObject("adodb.recordset")
link.open "select * from [link] order by pl_id asc",conn,1,1
if link.eof and link.bof then
response.Write("&nbsp;���޼�¼ !")
end if
while not link.eof
response.Write("<a href="""&link("url")&""" title=""" & link("title") &""" target=""_blank"">"&link("title")&"</a>")
link.movenext
wend
link.close
set link=nothing
end function

'=================================================
'��������xycms_newsimg
'���ܣ�����ͼƬ
'=================================================
function xycms_newsimg(id)
set newsimg=server.createobject("adodb.recordset") 
exec="select * from  [news] where len(img)>4 and ssfl="&id&" order by id desc  " 
newsimg.open exec,conn,1,1 
if newsimg.eof and newsimg.bof then
response.Write("<li>����ͼƬ����!</li>")
else
%>
<div class="pic"><img src="<%=newsimg("img")%>" /></div>
        <h3><a href="news_detail.asp?id=<%=newsimg("id")%>" class="img" title="<%=newsimg("title")%>"><%=left(newsimg("title"),10)%>...</a></h3>
        <p><%=strvalue(newsimg("body"),60)%></p> 
<%
newsimg.close
set newsimg=nothing
end if
end function

function xycms_newstitle(id)
set newstitle=server.createobject("adodb.recordset") 
exec="select * from [news_fl] where id="&id&"" 
newstitle.open exec,conn,1,1 
%>
<%=newstitle("title")%>
<%
newstitle.close
set newstitle=nothing
end function

'=================================================
function xycms_xycase()
set xycase=server.createobject("adodb.recordset") 
exec="select * from [xyzp] where len(img)>4 order by id desc  " 
xycase.open exec,conn,1,1 
if xycase.eof and xycase.bof then
response.Write("<li>�������²�Ʒ!</li>")
else
do while not xycase.eof
%>
<li>
            <a href="xyzp_detail.asp?id=<%=xycase("id")%>" title="<%=xycase("title")%>"><img src='<%=xycase("img")%>' width='154' height='112' alt='<%=xycase("title")%>'></a>
            <p class="Blue"><a href="xyzp_detail.asp?id=<%=xycase("id")%>" title="<%=xycase("title")%>"><%=left(xycase("title"),12)%></a></p>
          </li> 
<%
xycase.movenext 
loop 
end if
xycase.close
set xycase=nothing
end function

%>

