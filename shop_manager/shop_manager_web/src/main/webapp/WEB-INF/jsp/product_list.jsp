
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品列表</title>
</head>
<body>
<table class="easyui-datagrid" data-options="url:'/product/list',fitColumns:true,singleSelect:true">
    <thead>
    <tr>
        <th data-options="field:'id'">id</th>
        <th data-options="field:'name'">商品名</th>
        <th data-options="field:'image'">商品图片</th>
        <th data-options="field:'maketPrice'">市场价格</th>
        <th data-options="field:'price'">商品价格</th>
        <th data-options="field:'description'">商品描述</th>
        <th data-options="field:'productNumber'">商品编码</th>
    </tr>
    </thead>
</table>
</body>
</html>
