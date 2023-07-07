
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>重置密码</title>
    <style>
        input[type=submit], input[type=button] {
            background-color: #1abfb7;
            color: white;
            padding: 5px 10px;
            margin: 5px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form action="Admin_ResetPassword_back1.jsp" method="get">
    <p style="text-align:center;color: black; font-family: 宋体; font-size: 16px">
        请输入要重置密码的房产经纪人的工号
        <br>
        <input type="text" name="AgentID" style="height: 30px;">
        <input type="submit" value="提交">
    </p>
</form>
</body>
</html>
