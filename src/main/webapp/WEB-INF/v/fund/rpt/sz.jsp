<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 11">
<link rel=File-List href="sz.files/filelist.xml">
<style id="balance_new_5765_Styles"><!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl225765
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
.xl235765
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
.xl245765
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
.xl255765
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
.xl265765
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
.xl275765
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
.xl285765
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
.xl295765
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
.xl305765
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
.xl315765
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
.xl325765
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
.xl335765
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
.xl345765
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
	mso-number-format:"yyyy\\-mm\\-dd\;\@";
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl355765
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
	mso-number-format:"\#\,\#\#0\.00\;\[Red\]\\-\#\,\#\#0\.00";
	text-align:general;
	vertical-align:bottom;
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl365765
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
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.5pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl375765
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
	mso-number-format:Standard;
	text-align:general;
	vertical-align:bottom;
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl385765
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
	mso-number-format:"\#\,\#\#0\.00\;\[Red\]\\-\#\,\#\#0\.00";
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl395765
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
	mso-number-format:Standard;
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.5pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl405765
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
	text-align:general;
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
--></style>
</head>

<body>
<!--[if !excel]>　　<![endif]-->
<!--下列信息由 Microsoft Office Excel 的“发布为网页”向导生成。-->
<!--如果同一条目从 Excel 中重新发布，则所有位于 DIV 标记之间的信息均将被替换。-->
<!----------------------------->
<!--“从 EXCEL 发布网页”向导开始-->
<!----------------------------->

<div id="balance_new_5765" align=center x:publishsource="Excel">

<table x:str border=0 cellpadding=0 cellspacing=0 width=1011 class=xl225765
 style='border-collapse:collapse;table-layout:fixed;width:758pt'>
 <col class=xl225765 width=111 style='mso-width-source:userset;mso-width-alt:
 4059;width:83pt'>
 <col class=xl225765 width=180 span=5 style='mso-width-source:userset;
 mso-width-alt:6582;width:135pt'>
 <tr height=73 style='mso-height-source:userset;height:54.75pt'>
  <td colspan=6 height=73 class=xl235765 width=1011 style='height:54.75pt;
  width:758pt'>中伟业集团资金收支汇总表</td>
 </tr>
 <tr class=xl335765 height=36 style='mso-height-source:userset;height:27.0pt'>
  <td colspan=3 height=36 class=xl255765 style='height:27.0pt'>日期：2014 年 03 月</td>
  <td class=xl245765></td>
  <td colspan=2 class=xl265765>单位：元</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl275765 style='height:18.0pt'>日期</td>
  <td class=xl285765 style='border-left:none'>昨日余额</td>
  <td class=xl285765 style='border-left:none'>收入</td>
  <td class=xl285765 style='border-left:none'>支出</td>
  <td class=xl285765 style='border-left:none'>今日余额</td>
  <td class=xl295765 style='border-left:none'>备注</td>
 </tr> 
  <c:forEach items="${sz_rpt }" var="al">
 	<tr height=22 style='mso-height-source:userset;height:16.5pt'>
  		<td height=22 class=xl345765 style='height:16.5pt;border-top:none' x:num="41730">  		
  			<a href="<c:url value="detail">  
        				<c:param name="dt" value="${al.dt }"/>        
       				</c:url>  
    		">
    		${al.dt }
    		</a>  		
  		</td>
  		<td class=xl355765 align=right style='border-top:none;border-left:none' x:num="5588.33">
  			<fmt:formatNumber value="${al.periodInit }" pattern="#,###.00" type="number"/>  
  		</td>
  		<td class=xl355765 align=right style='border-top:none;border-left:none'  x:num="240000">
  			<fmt:formatNumber value="${al.debit }" pattern="#,###.00" type="number"/>  
  		</td>
  		<td class=xl355765 align=right style='border-top:none;border-left:none' x:num>
  			<fmt:formatNumber value="${al.credit }" pattern="#,###.00" type="number"/> 
  		</td>
  		<td class=xl355765 align=right style='border-top:none;border-left:none' x:num>
  			<fmt:formatNumber value="${al.balance }" pattern="#,###.00" type="number"/>  
  		</td>
  		<td class=xl365765 style='border-top:none;border-left:none'>　</td>
 	</tr>
  </c:forEach>
 
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td height=25 class=xl305765 style='height:18.75pt;border-top:none'>合计：</td>
  <td class=xl385765 style='border-top:none;border-left:none'>　</td>
  <td class=xl395765 style='border-top:none;border-left:none'>　</td>
  <td class=xl395765 style='border-top:none;border-left:none'>　</td>
  <td class=xl395765 style='border-top:none;border-left:none'>　</td>
  <td class=xl405765 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl225765 style='height:16.5pt'></td>
  <td class=xl225765></td>
  <td class=xl225765></td>
  <td class=xl225765></td>
  <td class=xl225765></td>
  <td class=xl225765></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td height=22 class=xl315765 style='height:16.5pt'>说明：</td>
  <td class=xl315765></td>
  <td class=xl225765></td>
  <td class=xl225765></td>
  <td class=xl225765></td>
  <td class=xl225765></td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td colspan=6 height=22 class=xl325765 style='height:16.5pt'>此报表反映了集团的收支情况，不包含各分支机构内的往来，依照规则需要合并或冲抵的也不在此报表中反映。</td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=111 style='width:83pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=180 style='width:135pt'></td>
 </tr>
 <![endif]>
</table>

</div>


<!----------------------------->
<!--“从 EXCEL 发布网页”向导结束-->
<!----------------------------->
</body>

</html>

