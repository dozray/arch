<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 11">
<link rel=File-List href="balance_new.files/filelist.xml">
<style id="balance_new_8142_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.font58142
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Arial Unicode MS";
	mso-generic-font-family:auto;
	mso-font-charset:134;}
.xl228142
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
.xl238142
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
.xl248142
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
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl258142
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
.xl268142
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
	text-align:right;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl278142
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
.xl288142
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
.xl298142
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
.xl308142
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
.xl318142
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
	border-bottom:1.0pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl328142
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
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl338142
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
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl348142
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
.xl358142
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
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl368142
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
.xl378142
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
	border-right:none;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl388142
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
.xl398142
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
.xl408142
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

<div id="balance_new_8142" align=center x:publishsource="Excel">

<table x:str border=0 cellpadding=0 cellspacing=0 width=1001 class=xl228142
 style='border-collapse:collapse;table-layout:fixed;width:751pt'>
 <col class=xl228142 width=164 style='mso-width-source:userset;mso-width-alt:
 5997;width:123pt'>
 <col class=xl228142 width=140 style='mso-width-source:userset;mso-width-alt:
 5120;width:105pt'>
 <col class=xl228142 width=154 style='mso-width-source:userset;mso-width-alt:
 5632;width:116pt'>
 <col class=xl228142 width=120 style='mso-width-source:userset;mso-width-alt:
 4388;width:90pt'>
 <col class=xl228142 width=155 style='mso-width-source:userset;mso-width-alt:
 5668;width:116pt'>
 <col class=xl228142 width=112 style='mso-width-source:userset;mso-width-alt:
 4096;width:84pt'>
 <col class=xl228142 width=113 style='mso-width-source:userset;mso-width-alt:
 4132;width:85pt'>
 <col class=xl228142 width=43 style='mso-width-source:userset;mso-width-alt:
 1572;width:32pt'>
 <tr height=22 style='height:16.5pt'>
  <td height=22 class=xl228142 width=164 style='height:16.5pt;width:123pt'></td>
  <td class=xl228142 width=140 style='width:105pt'></td>
  <td class=xl228142 width=154 style='width:116pt'></td>
  <td class=xl228142 width=120 style='width:90pt'></td>
  <td class=xl228142 width=155 style='width:116pt'></td>
  <td class=xl228142 width=112 style='width:84pt'></td>
  <td class=xl228142 width=113 style='width:85pt'></td>
  <td class=xl228142 width=43 style='width:32pt'></td>
 </tr>
 <tr height=53 style='mso-height-source:userset;height:39.75pt'>
  <td colspan=7 height=53 class=xl238142 style='height:39.75pt'>中伟业集团资金余额表</td>
  <td class=xl228142></td>
 </tr>
 <tr height=28 style='mso-height-source:userset;height:21.0pt'>
  <td height=28 class=xl238142 style='height:21.0pt'></td>
  <td class=xl08142></td>
  <td class=xl08142></td>
  <td class=xl08142></td>
  <td class=xl08142></td>
  <td class=xl08142></td>
  <td class=xl08142></td>
  <td class=xl228142></td>
 </tr>
 <tr class=xl248142 height=28 style='mso-height-source:userset;height:21.0pt'>
  <td colspan=3 height=28 class=xl258142 style='height:21.0pt'>日期：  
   <%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy年MM月dd日");    
	java.util.Date now = new java.util.Date();    
	out.print(formatter.format(now)); 
	%>	
	</td>
  <td class=xl248142></td>
  <td colspan=3 class=xl268142>单位：<!-- 万 -->元</td>
  <td class=xl248142></td>
 </tr>
 <tr height=11 style='mso-height-source:userset;height:8.25pt'>
  <td height=11 class=xl228142 style='height:8.25pt'></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl278142 style='height:18.0pt'>公司名称</td>
  <td class=xl288142 style='border-left:none'>现金</td>
  <td class=xl288142 style='border-left:none'>银行</td>
  <td class=xl288142 style='border-left:none'>承兑</td>
  <td class=xl288142 style='border-left:none'>余额</td>
  <td class=xl298142 style='border-left:none'>监管账户</td>
  <td class=xl308142>备注</td>
  <td class=xl228142></td>
 </tr>
 <c:set var="total_cash" value="${0}"/>
 <c:set var="total_bank" value="${0}"/>
 <c:set var="total_acceptance" value="${0}"/>
 <c:forEach items="${rpt}" var="um">
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl318142 style='height:16.5pt;border-top:none'>${um.companyName}</td>
  <td class=xl328142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${um.cashBalance }" pattern="#,###.00" type="number"/>  
  </td>
  <td class=xl328142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${um.bankBalance}" pattern="#,###.00" type="number"/>
  </td>
  <td class=xl328142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${um.acceptanceBalance}" pattern="#,###.00" type="number"/>  
  </td>
  <td class=xl328142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${um.cashBalance+um.bankBalance+um.acceptanceBalance}" pattern="#,###.00" type="number"/>
  </td>
  <td class=xl338142 align=right style='border-top:none;border-left:none' x:num>0</td>
  <td class=xl348142 style='border-top:none'>　</td>
  <td class=xl228142></td>
 </tr>
 <c:set var="total_cash" value="${total_cash + um.cashBalance }"/>
 <c:set var="total_bank" value="${total_bank + um.bankBalance }"/>
 <c:set var="total_acceptance" value="${total_acceptance + um.acceptanceBalance }"/>
 </c:forEach>


 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl358142 style='height:18.0pt;border-top:none'>合计：</td>
  <td class=xl368142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${total_cash }" pattern="#,###.##" type="number"/>  
  </td>
  <td class=xl368142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${total_bank }" pattern="#,###.##" type="number"/>
  </td>
  <td class=xl368142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${total_acceptance }" pattern="#,###.##" type="number"/>
  </td>
  <td class=xl368142 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${total_cash + total_bank +total_acceptance }" pattern="#,###.##" type="number"/>  
  </td>
  <td class=xl378142 style='border-top:none;border-left:none'>　</td>
  <td class=xl388142 style='border-top:none'>　</td>
  <td class=xl228142></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl228142 style='height:16.5pt'></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
 </tr>
 <tr height=22 style='height:16.5pt'>
  <td height=22 class=xl228142 style='height:16.5pt'></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl398142 style='height:16.5pt'>说明：</td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td colspan=6 height=22 class=xl408142 style='height:16.5pt'>此报表反映了集团的资金情况，包括了集团及各分支机构的现金、银行、承兑余额；数据来源为出纳管理已录入的现金银行日记账。</td>
  <td class=xl408142></td>
  <td class=xl228142></td>
 </tr>
 <tr height=22 style='height:16.5pt'>
  <td height=22 class=xl228142 style='height:16.5pt'></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
  <td class=xl228142></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=164 style='width:123pt'></td>
  <td width=140 style='width:105pt'></td>
  <td width=154 style='width:116pt'></td>
  <td width=120 style='width:90pt'></td>
  <td width=155 style='width:116pt'></td>
  <td width=112 style='width:84pt'></td>
  <td width=113 style='width:85pt'></td>
  <td width=43 style='width:32pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--“从 EXCEL 发布网页”向导结束-->
<!----------------------------->
</body>

</html>

