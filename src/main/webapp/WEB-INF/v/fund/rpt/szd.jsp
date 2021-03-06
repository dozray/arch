﻿<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 11">
<link rel=File-List href="szd.files/filelist.xml">
<style id="model_19936_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.font519936
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Arial Unicode MS";
	mso-generic-font-family:auto;
	mso-font-charset:134;}
.xl2219936
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
.xl2319936
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
.xl2419936
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
.xl2519936
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
.xl2619936
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
.xl2719936
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
.xl2819936
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
	border-top:1.0pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl2919936
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
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3019936
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
	border-top:1.0pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3119936
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
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
.xl3219936
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:#3366FF;
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
.xl3319936
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
.xl3419936
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
.xl3519936
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
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3619936
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
	border-bottom:1.0pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3719936
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
.xl3819936
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
	mso-number-format:"_ * \#\,\#\#0\.00_ \;_ * \\-\#\,\#\#0\.00_ \;_ * \0022-\0022??_ \;_ \@_ ";
	text-align:right;
	vertical-align:bottom;
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl3919936
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
	mso-number-format:"_ * \#\,\#\#0\.00_ \;_ * \\-\#\,\#\#0\.00_ \;_ * \0022-\0022??_ \;_ \@_ ";
	text-align:right;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
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

<div id="model_19936" align=center x:publishsource="Excel">

<table x:str border=0 cellpadding=0 cellspacing=0 width=1007 class=xl2219936
 style='border-collapse:collapse;table-layout:fixed;width:756pt'>
 <col class=xl2219936 width=111 style='mso-width-source:userset;mso-width-alt:
 4059;width:83pt'>
 <col class=xl2219936 width=210 style='mso-width-source:userset;mso-width-alt:
 7680;width:158pt'>
 <col class=xl2219936 width=180 style='mso-width-source:userset;mso-width-alt:
 6582;width:135pt'>
 <col class=xl2219936 width=181 style='mso-width-source:userset;mso-width-alt:
 6619;width:136pt'>
 <col class=xl2219936 width=180 style='mso-width-source:userset;mso-width-alt:
 6582;width:135pt'>
 <col class=xl2219936 width=145 style='mso-width-source:userset;mso-width-alt:
 5302;width:109pt'>
 <tr height=75 style='mso-height-source:userset;height:56.25pt'>
  <td colspan=6 height=75 class=xl2319936 width=1007 style='height:56.25pt;
  width:756pt'>中伟业集团公司收支明细表</td>
 </tr>
 <tr height=36 style='mso-height-source:userset;height:27.0pt'>
  <td colspan=3 height=36 class=xl2419936 style='height:27.0pt'>日期：${dc_detail[0].dt }</td>
  <td class=xl3319936></td>
  <td class=xl3419936></td>
  <td class=xl3419936>单位：元</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl2519936 style='height:18.0pt'>日期</td>
  <td class=xl2619936 style='border-left:none'>摘要</td>
  <td class=xl2619936 style='border-left:none'>收入</td>
  <td class=xl2619936 style='border-left:none'>支出</td>
  <td class=xl2619936 style='border-left:none'>余额</td>
  <td class=xl2719936 style='border-left:none'>备注</td>
 </tr>
 <c:forEach items="${dc_detail }" var="d">
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl3619936 style='height:16.5pt;border-top:none'>${d.dt }</td>
  <td class=xl3719936 style='border-top:none;border-left:none'>${d.summary }</td>
  <td class=xl3819936 style='border-top:none;border-left:none' x:num="240000">
  	<c:if test="${d.debit ne 0 }">
  	<fmt:formatNumber value="${d.debit }" pattern="#,###.00" type="number"/>
  	</c:if>
  </td>
  <td class=xl3819936 style='border-top:none;border-left:none' x:num="6699.36">
  	<c:if test="${d.credit ne 0 }">
  	<fmt:formatNumber value="${d.credit }" pattern="#,###.00" type="number"/>  	
  	</c:if>
  </td>
  <td class=xl3819936 style='border-top:none;border-left:none' x:num="460000">
  	<c:if test="${d.balance ne 0}">
  	<fmt:formatNumber value="${d.balance }" pattern="#,###.00" type="number" />
  	</c:if>
  </td>
  <td class=xl2819936 style='border-top:none;border-left:none'></td>
 </tr>
 </c:forEach>
 


 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl3619936 style='height:16.5pt;border-top:none'>　</td>
  <td class=xl3719936 style='border-top:none;border-left:none'>　</td>
  <td class=xl3819936 style='border-top:none;border-left:none'>　</td>
  <td class=xl3819936 style='border-top:none;border-left:none'>　</td>
  <td class=xl3819936 style='border-top:none;border-left:none'>　</td>
  <td class=xl2819936 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td height=25 class=xl3519936 style='height:18.75pt;border-top:none'>合计：</td>
  <td class=xl2919936 style='border-top:none;border-left:none'>　</td>
  <td class=xl3919936 style='border-top:none;border-left:none'>　</td>
  <td class=xl3919936 style='border-top:none;border-left:none'>　</td>
  <td class=xl3919936 style='border-top:none;border-left:none'>　</td>
  <td class=xl3019936 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl2219936 style='height:16.5pt'></td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl3119936 style='height:16.5pt'>说明：</td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl3219936 colspan=4 style='height:16.5pt'>此报表反映了集团的收支明细情况，包含了其所有的收支情况，依照规定合并或冲抵的也在此报表中反映。</td>
  <td class=xl2219936></td>
  <td class=xl2219936></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=111 style='width:83pt'></td>
  <td width=210 style='width:158pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=181 style='width:136pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=145 style='width:109pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--“从 EXCEL 发布网页”向导结束-->
<!----------------------------->
</body>

</html>
