<!-- #include file="UploadClass.asp" -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
}
-->
</style>
<title> System Management</title>
<%
  Server.ScriptTimeout = 99999
 
  path = "../upLoadFile/" 'ʵ��·��
  path2 = "upLoadFile/"   '���·��
  set Upload = new DoteyUpload
  Upload.ProgressID = Request.QueryString("ProgressID")
  dim ID
  ID=trim(Request("ID"))
Upload.Upload() '�ϴ��ļ�

If upload.ErrMsg = "" then
	For Each formName In upload.Files ''�г������ϴ��˵��ļ�
		Set file = upload.Files(formName)  ''����һ���ļ�����
 if file.filesize<100 then
 	response.write "����ѡ����Ҫ�ϴ����ļ���[ <a onclick=history.go(-1) style='cursor: hand'>�����ϴ�</a> ]"
	response.end
 end if
  fileExt=lcase(right(file.filename,3))
const UpFileType="midi|mid|mpe|wma|avi|rm|mp3|gif|jpg|doc|xls|ppt|mp3|wma|asf|bmp|mid|aiff|arj|ram|rar|txt|wav|zip|png|psd|swf|flv|pdf"

  arrUpFileType=split(UpFileType,"|")
 for i=0 to ubound(arrUpFileType)
			if fileEXT=trim(arrUpFileType(i)) then
				EnableUpload=true
				exit for
			end if
 next
 if fileEXT="asp" or fileEXT="asa" or fileEXT="aspx" or fileEXT="js" or fileEXT="exe" or fileEXT="jsp" or fileEXT="php" then
			EnableUpload=false
 end if
 if EnableUpload=false then
			response.write "���ļ����Ͳ�ֻ�����ϴ� [ <a onclick=history.go(-1) style='cursor: hand'>�����ϴ�</a> ]"
			response.end
 end if

' �����������ϴ��ļ�
Randomize '��ʼ�������������
 ranNum=int(90000*rnd)+10000
For Each fileItem In Upload.Files.Items	
filename=Path&year(now)&month(now)&day(now)&ranNum&"."&FileExt	
filename2=Path2&year(now)&month(now)&day(now)&ranNum&"."&FileExt			
fileItem.SaveAs (filename)
Next

response.write "<script>parent.document.addform."&ID&".value='"&filename2&"'</script>"
response.write "�ļ�����ɹ��� [ <a onclick=history.go(-1) style='cursor: hand'>����</a> ]"
		Set file=nothing
	Next
Else
	Response.Write("�ϴ������г��ִ���:" & Upload.ErrMsg)
End If
'�ϴ����� 
'  if Upload.Files.Count > 0 then
'	Items = Upload.Files.Items
'  end if
'
'  Response.Write("�����ϴ� " & Upload.Files.Count & " ���ļ���: " & path & "<hr>")
'  for each File in Upload.Files.Items
'	'File.SaveAs("c:\" & File.FileName)	''���Ҫ���棬��ȥ��ǰ���ע��
'   Response.Write("�ļ���: " & File.FileName & "<br>")
'    Response.Write("�ļ���С: " & File.FileSize/1024 & " KB<br>")
'    Response.Write("�ļ�����: " & File.FileType & "<br>")
'    Response.Write("�ͻ���·��: " & File.FilePath & "<br>")
'    Response.Write("<hr>")
'  next
'  Response.Write("<br>")
Set upload=nothing
%>