<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加房产信息</title>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <script type="text/javascript" src="../static/script_css/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function ()
        {
            $("#sub_btn").click(function ()
            {
                var $id = $("#HouseID").val();
                var id_test = /^\d{12}$/;
                if (!id_test.test($id))
                {
                    $("span.errorMsg").text("房产编号不合法！");
                    return false;
                }

                $("span.errorMsg").text("");
            });
        })
    </script>
    <style type="text/css">
        .login_form {
            height: 490px;
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
        }
    </style>
</head>
<body>

<div id="content">
    <div class="login_form">
        <div class="login_box">
            <div class="tit">
                <h1>添加房产信息</h1>
                <span class="errorMsg"></span>
            </div>
            <div class="form">
                <form action="Admin_AddHouse_back.jsp" method="get">
                    <table>
                        <tr>
                            <td>
                                <label>房产编号：</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="年月日+四位顺序号" autocomplete="off"
                                       tabindex="1" name="HouseID" id="HouseID">
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">
                                <label>户型：</label>
                            </td>
                            <td>
                                <label><input type="radio" name="HouseType" value="四室两厅">四室两厅</label>
                                <label><input type="radio" name="HouseType" value="四室一厅">四室一厅</label>
                                <label><input type="radio" name="HouseType" value="三室两厅">三室两厅</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label><input type="radio" name="HouseType" value="三室一厅">三室一厅</label>
                                <label><input type="radio" name="HouseType" value="两室两厅">两室两厅</label>
                                <label><input type="radio" name="HouseType" value="两室一厅">两室一厅</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>房产地址：</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入房产地址"
                                       autocomplete="off" tabindex="1" name="Address" id="Address"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>建造年份：</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入建造年份"
                                       autocomplete="off" tabindex="1" name="Year" id="Year">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>建造面积：</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入建造面积"
                                       autocomplete="off" tabindex="1" name="Area" id="Area">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>销售报价：</label>
                            </td>
                            <td>
                                <input class="itxt" type="text" placeholder="请输入报价"
                                       autocomplete="off" tabindex="1" name="Sales" id="Sales">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>销售状态：</label>
                            </td>
                            <td>
                                <label><input type="radio" name="Status" value="在售" checked>在售</label>
                                <label><input type="radio" name="Status" value="待售">待售</label>
                                <label><input type="radio" name="Status" value="意向">意向</label>
                                <label><input type="radio" name="Status" value="售出">售出</label>
                                <label><input type="radio" name="Status" value="停售">停售</label>
                            </td>
                        </tr>
                    </table>
                    <input type="submit" value="添加" id="sub_btn">
                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>
