<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var cfg =     {
        type: 'POST', 
        data: JSON.stringify({userName:'winzip',password:'password',mobileNO:'13818881888'}), 
        dataType: 'json',
        contentType:'application/json;charset=UTF-8',        
        success: function(result) { 
            alert(result.success); 
        } 
    };

function doTestJson(actionName){
    cfg.url = actionName;
    $.ajax(cfg);
}
</script>
</head>
<body>
<h2>Hello...</h2>
</body>
</html>