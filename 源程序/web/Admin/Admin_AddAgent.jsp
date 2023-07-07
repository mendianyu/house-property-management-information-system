<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加房产经纪人</title>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <script type="text/javascript" src="../static/script_css/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function ()
        {
            $("#sub_btn").click(function ()
            {
                var $id = $("#AgentID").val();
                var id_test = /^\d{8}$/;
                if (!id_test.test($id))
                {
                    $("span.errorMsg").text("房产经纪人ID不合法！");
                    return false;
                }
                var $phone = $("#AgentPhone").val();
                var phone_test = /^\d{11}$/;
                if (!id_test.test($id))
                {
                    $("span.errorMsg").text("手机号码不合法!");
                    return false;
                }
                //验证两次密码是否输入一致
                var $password = $("#Apassword").val();
                var $repassword = $("#repwd").val();
                if ($repassword !== $password)
                {
                    $("span.errorMsg").text("两次密码输入不一致!");
                    return false;
                }
                $("span.errorMsg").text("");
            });
        })
    </script>
    <style type="text/css">
        .login_form {
            height: 520px;
            width: 406px;
            position: absolute;
            top: 20%;
            left: 50%;

            transform: translate(-50%, -50%);
            background-color: #1abfb7;

        }
        #sub_btn {
            position: absolute;
            bottom: 20px;
            left: 50%;
            background-color: rgba(26, 139, 191, 0.83);
            transform: translateX(-50%);
        }

        * {
            margin: 0;
            font-family: serif;
            color: #ffffff;
        }

        .form .itxt {
            color: black;
            margin: 5px;
            border-radius: 7px;
        }
    </style>
</head>
<body>


<div id="content">
    <div class="login_form">
        <div class="login_box">
            <div class="tit">
                <h1>房产经纪人注册</h1>
                <span class="errorMsg"></span>
            </div>
            <div class="form">
                <form action="Admin_AddAgent_back.jsp" method="get">
                    <table>
                        <tr>
                            <td>
                                <label>房产经纪人ID</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入房产经纪人ID" autocomplete="off"
                                       tabindex="1" name="AgentID" id="AgentID">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>登录密码</label>
                            </td>
                            <td>
                                <input class="itxt" type="password" placeholder="请输入密码" autocomplete="off"
                                       tabindex="1"
                                       name="Apassword" id="Apassword">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>确认密码</label>
                            </td>
                            <td>
                                <input class="itxt" type="password" placeholder="确认密码"
                                       autocomplete="off" tabindex="1" name="repwd" id="repwd"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>姓名</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入姓名"
                                       autocomplete="off" tabindex="1" name="AgentName" id="AgentName">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>手机号码</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入手机号码"
                                       autocomplete="off" tabindex="1" name="AgentPhone" id="AgentPhone">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>家庭住址</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入家庭住址"
                                       autocomplete="off" tabindex="1" name="AgentAddress" id="AgentAddress">
                            </td>
                        </tr>
                    </table>
                    <input type="submit" value="注册" id="sub_btn">
                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>
