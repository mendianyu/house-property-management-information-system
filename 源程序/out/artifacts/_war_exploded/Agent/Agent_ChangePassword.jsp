<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改密码</title>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <script type="text/javascript" src="../static/script_css/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function ()
        {
            $("#sub_btn").click(function ()
            {
                //验证两次密码是否输入一致
                var $password = $("#Password1").val();
                var $repassword = $("#Password2").val();
                if ($repassword !== $password)
                {
                    $("span.errorMsg").text("新密码两次输入不一致!");
                    return false;
                }
                $("span.errorMsg").text("");
            });
        })
    </script>
    <style>
        .form .itxt {
            float: none;
            font-size: 14px;
            height: 25px;
            line-height: 18px;
            overflow: hidden;
            padding: 10px 0 10px 10px;
            width: 250px;
            color: black;
            border: 1px #e3e3e3 solid;
        }

        .login_form {
            height: 400px;
            width: 406px;
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #1abfb7;
        }

        #sub_btn {
            background-color: rgba(40, 107, 160, 0.93);
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
        }

        * {
            margin: 0;
            font-family: serif;
            color: #ffffff;
        }
    </style>
</head>
<body>
<div id="content">
    <div class="login_form">
        <div class="login_box">
            <div class="tit">
                <h1>密码修改</h1>
            </div>
            <div class="msg_cont">
                <b></b>
                <span class="errorMsg" style="color: red;"></span>
            </div>
            <div class="form">
                <form action="Agent_ChangePassword_back.jsp" method="get">
                    <label>&nbsp&nbsp旧密码：&nbsp&nbsp
                        <input class="itxt" type="password" placeholder="请输入旧密码" autocomplete="off" tabindex="1"
                               name="Password0"/>
                    </label>
                    <br/>
                    <br/>
                    <label>&nbsp&nbsp新密码：&nbsp&nbsp
                        <input class="itxt" type="password" placeholder="请输入新密码" autocomplete="off" tabindex="1"
                               name="Password1" id="Password1"/>
                    </label>
                    <br/>
                    <br/>
                    <label>再次输入：
                        <input class="itxt" type="password" placeholder="请再次输入新密码" autocomplete="off" tabindex="1"
                               name="Password2" id="Password2"/>
                    </label>
                    <br/>
                    <br/>
                    <input type="submit" value="修改" id="sub_btn"/>
                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>