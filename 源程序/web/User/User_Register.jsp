<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>顾客注册</title>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <script type="text/javascript" src="../static/script_css/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function ()
        {
            $("#sub_btn").click(function ()
            {
                //验证ID是否为8位数字
                var $id = $("#UserID").val();
                var id_test = /^\d{8}$/;
                if (!id_test.test($id))
                {
                    $("span.errorMsg").text("顾客ID不合法！");
                    return false;
                }
                //验证身份证号是否为18位
                var $cid = $("#IdNumber").val();
                var $cid_test = /^\d{17}(\\d|x|X)$/;
                if ($cid_test.test($cid))
                {
                    $("span.errorMsg").text("身份证号不合法！");
                    return false;
                }
                //验证手机号是否为11位数字
                var $phone = $("#UserPhone").val();
                var phone_test = /^\d{11}$/;
                if (!id_test.test($id))
                {
                    $("span.errorMsg").text("手机号码不合法!");
                    return false;
                }
                //验证两次密码是否输入一致
                var $password = $("#Upassword").val();
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
            height: 450px;
            margin-top: 25px;
        }

        .login_banner {
            height: 500px;
            background-color: #39987c;
        }

        .form .itxt {
            height: 40px;
            width: 260px;
        }
    </style>
</head>
<body>
<div id="login_banner">
    <span class="login_word" style="font-size: 40px;color:#1a36bf;">房产信息管理系统</span>
</div>
<div class="login_banner">

    <div id="l_content">
        <span class="login_word">欢迎注册</span>
    </div>

    <div id="content">
        <div class="login_form">
            <div class="login_box">
                <div class="tit">
                    <h1>顾客注册</h1>
                    <span class="errorMsg"></span>
                </div>
                <div class="form">
                    <form action="User_Register_back.jsp" method="get">
                        <table>
                            <tr>
                                <td>
                                    <label>顾客ID：</label>
                                </td>
                                <td>
                                    <input class="itxt" type="text" placeholder="请输入顾客ID" autocomplete="off"
                                           tabindex="1" name="UserID" id="UserID">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>登录密码：</label>
                                </td>
                                <td>
                                    <input class="itxt" type="password" placeholder="请输入密码" autocomplete="off"
                                           tabindex="1"
                                           name="Upassword" id="Upassword">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>确认密码：</label>
                                </td>
                                <td>
                                    <input class="itxt" type="password" placeholder="确认密码"
                                           autocomplete="off" tabindex="1" name="repwd" id="repwd"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>身份证号：</label>
                                </td>
                                <td>
                                    <input class="itxt" type="text" placeholder="请输入身份证号"
                                           autocomplete="off" tabindex="1" name="IdNumber" id="IdNumber">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>姓名：</label>
                                </td>
                                <td>
                                    <input class="itxt" type="text" placeholder="请输入姓名"
                                           autocomplete="off" tabindex="1" name="UserName" id="UserName">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>性别：</label>
                                </td>
                                <td>
                                    <label><input style="height: 15px;width: 15px" type="radio" name="Sex" value="男">&nbsp;&nbsp;&nbsp;男</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label><input style="height: 15px;width: 15px" type="radio" name="Sex" value="女">&nbsp;&nbsp;&nbsp;女</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>手机号码：</label>
                                </td>
                                <td>
                                    <input class="itxt" type="text" placeholder="请输入手机号码"
                                           autocomplete="off" tabindex="1" name="UserPhone" id="UserPhone">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>家庭住址：</label>
                                </td>
                                <td>
                                    <input class="itxt" type="text" placeholder="请输入家庭住址"
                                           autocomplete="off" tabindex="1" name="UserAddress" id="UserAddress">
                                </td>
                            </tr>
                        </table>
                        <input type="submit" value="注册" id="sub_btn">
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
<div id="bottom">
			<span>
				Mendianyu.Copyright &copy;2023
			</span>
</div>
</body>
</html>
