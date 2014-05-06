<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
﻿<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 11">
<link rel=File-List href="user_add.files/filelist.xml">
<style id="model_20249_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl2220249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl2320249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:22.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl2420249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:left;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl2520249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.5pt solid windowtext;
	background:#99CCFF;
	mso-pattern:auto none;
	white-space:nowrap;}
.xl2620249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:#99CCFF;
	mso-pattern:auto none;
	white-space:nowrap;}
.xl2720249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.5pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:#99CCFF;
	mso-pattern:auto none;
	white-space:nowrap;}
.xl2820249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl2920249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:right;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3020249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:left;
	vertical-align:bottom;
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3120249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.5pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	background:#99CCFF;
	mso-pattern:auto none;
	white-space:nowrap;}
.xl3220249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.5pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	background:#99CCFF;
	mso-pattern:auto none;
	white-space:nowrap;}
.xl3320249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.5pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	background:#99CCFF;
	mso-pattern:auto none;
	white-space:nowrap;}
.xl3420249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3520249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3620249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:left;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3720249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3820249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:left;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3920249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl4020249
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:微软雅黑, sans-serif;
	mso-font-charset:134;
	mso-number-format:"\@";
	text-align:left;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
ruby
	{ruby-align:left;}
rt
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Arial Unicode MS";
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-char-type:none;}
-->
</style>
</head>

<body>
<!--[if !excel]>　　<![endif]-->
<!--下列信息由 Microsoft Office Excel 的“发布为网页”向导生成。-->
<!--如果同一条目从 Excel 中重新发布，则所有位于 DIV 标记之间的信息均将被替换。-->
<!----------------------------->
<!--“从 EXCEL 发布网页”向导开始-->
<!----------------------------->

<div id="model_20249" align=center x:publishsource="Excel">

<table x:str border=0 cellpadding=0 cellspacing=0 width=1007 class=xl2220249
 style='border-collapse:collapse;table-layout:fixed;width:755pt'>
 <col class=xl2220249 width=39 style='mso-width-source:userset;mso-width-alt:
 1426;width:29pt'>
 <col class=xl2220249 width=200 style='mso-width-source:userset;mso-width-alt:
 7314;width:150pt'>
 <col class=xl2220249 width=180 span=2 style='mso-width-source:userset;
 mso-width-alt:6582;width:135pt'>
 <col class=xl2220249 width=60 span=3 style='mso-width-source:userset;
 mso-width-alt:2194;width:45pt'>
 <col class=xl2220249 width=228 style='mso-width-source:userset;mso-width-alt:
 8338;width:171pt'>
 <tr height=75 style='mso-height-source:userset;height:56.25pt'>
  <td colspan=8 height=75 class=xl2320249 width=1007 style='height:56.25pt;
  width:755pt'>用户列表</td>
 </tr>
 <tr height=36 style='mso-height-source:userset;height:27.0pt'>
  <td colspan=3 height=36 class=xl2420249 style='height:27.0pt'></td>
  <td class=xl2820249><a href="/user/add">添加</a></td>
  <td class=xl2820249></td>
  <td class=xl2820249></td>
  <td class=xl2820249></td>
  <td class=xl2920249></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl2520249 style='height:18.0pt'>序号</td>
  <td class=xl2620249 style='border-left:none'>编号</td>
  <td class=xl2620249 style='border-left:none'>名称</td>
  <td class=xl2620249 style='border-left:none'>电话</td>
  <td colspan=3 class=xl3120249 style='border-right:1.0pt solid black;
  border-left:none'>功能</td>
  <td class=xl2720249 style='border-left:none'>备注</td>
 </tr>
 
 <c:forEach items="${users}" var="um">		
	 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  		<td height=22 class=xl3420249 style='height:16.5pt;border-top:none'>${um.id}</td>
  		<td class=xl3020249 style='border-top:none;border-left:none'>${um.code}</td>
  		<td class=xl3020249 style='border-top:none;border-left:none'><a href="/user/${um.id}">${um.userName}</a></td>
  		<td class=xl3020249 style='border-top:none;border-left:none'>${um.phone}</td>
  		<td class=xl3520249 style='border-top:none;border-left:none'><a href="/user/${um.id }/update">编辑</a></td>
  		<td class=xl3520249 style='border-top:none'><a href="/user/${um.id }/freeze">冻结</a></td>
  		<td class=xl3520249 style='border-top:none'><a href="/user/${um.id }/delete">删除</a></td>
  		<td class=xl3620249 style='border-top:none'>${um.remark}</td>
 </tr>
</c:forEach>

 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td height=25 class=xl3720249 style='height:18.75pt;border-top:none'>　</td>
  <td class=xl3820249 style='border-top:none;border-left:none'>　</td>
  <td class=xl3820249 style='border-top:none;border-left:none'>　</td>
  <td class=xl3820249 style='border-top:none;border-left:none'>　</td>
  <td class=xl3920249 style='border-top:none;border-left:none'>　</td>
  <td class=xl3920249 style='border-top:none'>　</td>
  <td class=xl3920249 style='border-top:none'>　</td>
  <td class=xl4020249 style='border-top:none'>　</td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=39 style='width:29pt'></td>
  <td width=200 style='width:150pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=60 style='width:45pt'></td>
  <td width=60 style='width:45pt'></td>
  <td width=60 style='width:45pt'></td>
  <td width=228 style='width:171pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--“从 EXCEL 发布网页”向导结束-->
<!----------------------------->
</body>

</html>
