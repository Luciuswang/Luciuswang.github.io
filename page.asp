	<%
'提示错误信息
sub strA(str1)
      Response.Write("<script language=""JavaScript"">alert("""&str1&""");history.go(-1);</script>")
	  response.End()
end sub	  	

'成功提示信息
sub strB(str2,url)
      Response.Write("<script language=""JavaScript"">alert("""&str2&""");window.location='"&url&"';</script>")
	  response.End()
end sub	   

'页面自动跳转
sub AutoJump(str1,url)
    Response.Write("<br/>&nbsp;&nbsp;<font color=red>"&str1&"</font><br/>")
	Response.Write("<br/>&nbsp;&nbsp;正在跳转...<br/>")
	Response.Write("<br/>&nbsp;&nbsp;页面没有自动跳转<a href="&url&">【点这里】</a><br/>")
	Response.Write("<meta http-equiv=refresh content=2;url='"&url&"'>")
end sub


'分页子程序
Sub PageControl(iCount,pagecount,page,table_style,font_style)
'生成上一页下一页链接
    Dim query, a, x, temp
    action = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("SCRIPT_NAME")
    query = Split(Request.ServerVariables("QUERY_STRING"), "&")
    For Each x In query
        a = Split(x, "=")
        If StrComp(a(0), "page", vbTextCompare) <> 0 Then
            temp = temp & a(0) & "=" & a(1) & "&"
        End If
    Next
    Response.Write("<table width=100% border=0 cellpadding=0 cellspacing=0 >" & vbCrLf )        
    Response.Write("<form method=get onsubmit=""document.location = '" & action & "?" & temp & "Page='+ this.page.value;return false;""><TR >" & vbCrLf )
    Response.Write("<TD align=left  class=hui>" & vbCrLf )
    Response.Write(font_style & vbCrLf ) 
	'response.Write "<A href=javascript:history.back()>【返回前页】</a>&nbsp;&nbsp;&nbsp;"
    if page<=1 then
        Response.Write ("首页 " & vbCrLf)        
        Response.Write ("上一页 " & vbCrLf)
    else        
        Response.Write("<A HREF=" & action & "?" & temp & "Page=1>首页</A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & ">上一页</A> " & vbCrLf)
    end if
    if page>=pagecount then
        Response.Write ("下一页 " & vbCrLf)
        Response.Write ("尾页 " & vbCrLf)            
    else
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page+1) & ">下一页</A> " & vbCrLf)
        Response.Write("<A HREF=" & action & "?" & temp & "Page=" & pagecount & ">尾页</A> " & vbCrLf)            
    end if
    Response.Write("页次：" & page & "/" & pageCount & "页"&  vbCrLf)
    Response.Write(" 共" & iCount & "条记录" &  vbCrLf)
    Response.Write(" 转" & "<INPUT CLASS=wenbenkuang TYEP=TEXT NAME=page SIZE=2 Maxlength=5 VALUE=" & page & ">" & "页"  & vbCrLf & "<INPUT CLASS=go-wenbenkuang type=submit value=GO>")
    Response.Write("</TD>" & vbCrLf )                
    Response.Write("</TR></form>" & vbCrLf )        
    Response.Write("</table>" & vbCrLf )        
End Sub


sub Left1(str1,url)
    Response.Write("<br/>&nbsp;&nbsp;<font color=red>"&str1&"</font><br/>")
	Response.Write("<br/>&nbsp;&nbsp;正在跳转...<br/>")
	Response.Write("<br/>&nbsp;&nbsp;页面没有自动跳转<a href="&url&">【点这里】</a><br/>")
	Response.Write("<meta http-equiv=refresh content=2;url='"&url&"'>")
end sub
%>
