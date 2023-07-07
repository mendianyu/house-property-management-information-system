<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>房产经纪人功能页</title>
    <script type="text/javascript" src="../static/script_css/jquery-1.7.2.js"></script>

    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        iframe {
            width: 90%;
            height: 1000px;
            margin-top: 20px;
            margin-right: 20px;
            margin-left: 60px;
        }

        .active {
            background-color: rgba(0, 72, 254, 0.36);
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function ()
        {
            $('ul li a').click(function ()
            {
                $('ul li a').removeClass('active');
                $(this).addClass('active');
            });
        });
    </script>
</head>
<body>
<div class="container">
    <div class="sidebar">
        <h3>房产经纪人功能页面</h3>
        <ul style="list-style-type: none; padding: 0;">
            <li><a href="Agent_Information.jsp" target="contentFrame">查看个人信息</a></li>
            <li><a href="Agent_ChangePassword.jsp" target="contentFrame">修改个人密码</a></li>
            <li><a href="Agent_DealHouse.jsp" target="contentFrame">房产交易</a></li>
            <li><a href="Agent_LookHouse.jsp" target="contentFrame">浏览房产信息</a></li>
            <li><a href="Agent_SearchHouse.jsp" target="contentFrame">查询房产信息</a></li>
            <li><a href="../login.jsp">退出登录</a></li>
        </ul>
    </div>
    <div class="content">
        <iframe id="contentFrame" name="contentFrame" src="Agent_Information.jsp"></iframe>
    </div>
</div>
</body>
</html>
