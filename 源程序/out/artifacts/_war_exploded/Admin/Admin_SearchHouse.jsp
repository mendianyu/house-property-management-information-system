<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>房产信息查询</title>
    <link type="text/css" rel="stylesheet" href="../static/script_css/style.css">
    <style>

    </style>
</head>
<body>
<div class="search-bar">
    <form action="Admin_SearchHouse_part.jsp" method="get" target="contentFrame1">
            户型
            <select name="Type">
                <option value="" selected>不限</option>
                <option value="两室一厅">两室一厅</option>
                <option value="两室两厅">两室两厅</option>
                <option value="三室一厅">三室一厅</option>
                <option value="三室两厅">三室两厅</option>
                <option value="四室一厅">四室一厅</option>
                <option value="四室两厅">四室两厅</option>
            </select>
            地址
            <input type="text" name="Address" placeholder="意向房产地址">
            面积
            <input type="text" name="Area" placeholder="平方米" style="width: 100px;">
            价格区间
            <input type="text" name="minPrice" placeholder="万元" style="width: 100px;"> --
            <input type="text" name="maxPrice" placeholder="万元" style="width: 100px;">
            <input type="reset" value="重置">
            <input type="submit" value="查询">
    </form>
</div>

<div class="content">
    <iframe id="contentFrame1" name="contentFrame1"></iframe>
</div>

</body>
</html>
