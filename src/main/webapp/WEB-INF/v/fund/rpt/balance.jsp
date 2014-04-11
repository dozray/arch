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
<link rel=File-List href="model.files/filelist.xml">
<style id="model_26491_Styles"><!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl2226491
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
.xl2326491
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
.xl2426491
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
.xl2526491
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
.xl2626491
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
.xl2726491
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
.xl2826491
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
.xl2926491
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
.xl3026491
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
.xl3126491
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
.xl3226491
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
.xl3326491
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
.xl3426491
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
.xl3526491
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
.xl3626491
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
.xl3726491
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
.xl3826491
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
.xl3926491
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
.xl4026491
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
--></style>
</head>

<body>
<!--[if !excel]>　　<![endif]-->
<!--下列信息由 Microsoft Office Excel 的“发布为网页”向导生成。-->
<!--如果同一条目从 Excel 中重新发布，则所有位于 DIV 标记之间的信息均将被替换。-->
<!----------------------------->
<!--“从 EXCEL 发布网页”向导开始-->
<!----------------------------->

<div id="model_26491" align=center x:publishsource="Excel">

<table x:str border=0 cellpadding=0 cellspacing=0 width=1173 class=xl2226491
 style='border-collapse:collapse;table-layout:fixed;width:880pt'>
 <col class=xl2226491 width=160 style='mso-width-source:userset;mso-width-alt:
 5851;width:120pt'>
 <col class=xl2226491 width=180 span=5 style='mso-width-source:userset;
 mso-width-alt:6582;width:135pt'>
 <col class=xl2226491 width=113 style='mso-width-source:userset;mso-width-alt:
 4132;width:85pt'>
 <tr height=75 style='mso-height-source:userset;height:56.25pt'>
  <td colspan=7 height=75 class=xl2326491 width=1173 style='height:56.25pt;
  width:880pt'>中伟业集团资金余额表</td>
 </tr>
 <tr class=xl2426491 height=36 style='mso-height-source:userset;height:27.0pt'>
  <td colspan=3 height=36 class=xl2526491 style='height:27.0pt'>日期
   <%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy年MM月dd日");    
	java.util.Date now = new java.util.Date();    
	out.print(formatter.format(now)); 
	%>	
  </td>
  <td class=xl2426491></td>
  <td colspan=2 class=xl2626491>单位：元</td>
  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl2726491 style='height:18.0pt'>公司名称</td>
  <td class=xl2826491 style='border-left:none'>现金</td>
  <td class=xl2826491 style='border-left:none'>银行</td>
  <!-- <td class=xl2826491 style='border-left:none'>承兑</td> -->
  <td class=xl2826491 style='border-left:none'>余额</td>
  <td class=xl2926491 style='border-left:none'>监管账户</td>
  <td class=xl3026491>备注</td>
 </tr>
 <c:set var="total_cash" value="${0}"/>
 <c:set var="total_bank" value="${0}"/>
 <c:set var="total_acceptance" value="${0}"/>
 <c:set var="total_freeze" value="${0 }"/>
 <c:forEach items="${rpt}" var="um">
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl3126491 style='height:16.5pt;border-top:none'>${um.companyName}</td>
  <td class=xl3226491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${um.cashBalance }" pattern="#,###.00" type="number"/>  
  </td>
  <td class=xl3226491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${um.bankBalance}" pattern="#,###.00" type="number"/>
  </td>
 <%--  <td class=xl3226491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${um.acceptanceBalance}" pattern="#,###.00" type="number"/>  
  </td> --%>
  <td class=xl3226491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${um.cashBalance+um.bankBalance+um.acceptanceBalance}" pattern="#,###.00" type="number"/>
  </td>
  <td class=xl3326491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${um.freezeBalance}" pattern="#,###.00" type="number"/> 
  </td>
  <td class=xl3426491 style='border-top:none'>　</td>
 </tr>
 <c:set var="total_cash" value="${total_cash + um.cashBalance }"/>
 <c:set var="total_bank" value="${total_bank + um.bankBalance }"/>
 <c:set var="total_acceptance" value="${total_acceptance + um.acceptanceBalance }"/>
 <c:set var="total_freeze" value="${total_freeze+um.freezeBalance }"/>
 </c:forEach>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl3526491 style='height:18.0pt;border-top:none'>合计：</td>
  <td class=xl3626491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${total_cash }" pattern="#,###.##" type="number"/>  
  </td>
  <td class=xl3626491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${total_bank }" pattern="#,###.##" type="number"/>
  </td>
  <%-- <td class=xl3626491 align=right style='border-top:none;border-left:none' x:num>
  	<fmt:formatNumber value="${total_acceptance }" pattern="#,###.##" type="number"/>
  </td> --%>
  <td class=xl3626491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${total_cash + total_bank +total_acceptance }" pattern="#,###.##" type="number"/>
  </td>
  <td class=xl3726491 align=right style='border-top:none;border-left:none' x:num>
  <fmt:formatNumber value="${total_freeze }" pattern="#,###.##" type="number"/>
  </td>
  <td class=xl3826491 style='border-top:none'>　</td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl2226491 style='height:16.5pt'></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl3926491 style='height:16.5pt'>说明：</td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
  <td class=xl2226491></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td colspan=6 height=22 class=xl4026491 style='height:16.5pt'>此报表反映了集团的资金情况，包括了集团及各分支机构的现金、银行、承兑余额；数据来源为出纳管理已录入的现金银行日记账。</td>
  <td class=xl4026491></td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=160 style='width:120pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=113 style='width:85pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--“从 EXCEL 发布网页”向导结束-->
<!----------------------------->
</body>

</html>


