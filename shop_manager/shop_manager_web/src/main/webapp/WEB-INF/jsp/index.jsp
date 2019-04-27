<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/css/themes/icon.css">
    <script type="text/javascript" src="/js/jquery.min.js">
    </script>
    <script type="text/javascript" src="/js/jquery.easyui.min.js">
    </script>
</head>
<body class="easyui-layout">
<div data-options="region:'west',title:'菜单栏',split:true,minWidth:180" style="width:100px">
    <ul id="tree" class="easyui-tree">
        <li>
            <span>商品管理</span>
            <ul>
                <li data-options="attributes:{'url':'manager/product_list'}"><span>商品列表</span></li>
                <li data-options="attributes:{'url':'manager/product_add'}"><span>商品添加</span></li>
            </ul>
        </li>
        <li>
            <span>商品类别管理</span>
            <ul>
                <li data-options="attributes:{'url':'manager/product_cat_list'}"><span>商品类别列表</span></li>
            </ul>
        </li>
    </ul>
    <button onclick="closeAll()">关闭所有</button>
</div>
<div data-options="region:'center',title:''" style="padding:3px;background:#eee;">
    <div id="tabs" class="easyui-tabs">
        <div title="首页" style="padding:20px;display:none;">
            首页
        </div>
    </div>
</div>
</body>
<script>
    function closeAll(){
        var tabs=$('#tabs').tabs('tabs');
        var len=tabs.length;
        if(len>0){
            var titles = new Array();
            for(var i=0;i<len;i++){
               titles.push(tabs[i].panel('options').title);
               //  var til=tabs[i].panel('options').title;
               //  console.log(til);
               //  $('#tabs').tabs('close',til);
            }
            for(var j=0;j<len;j++){
                $('#tabs').tabs('close',titles[j]);
            }
        }
        return;
    }
    $('#tree').tree({
        onClick: function(node){
            var tabs = $('#tabs');
            var tab=tabs.tabs('getTab',node.text);
            if(tab){
                tabs.tabs('update', {
                    tab: tab,
                    options: {
                        title: node.text,
                        href: node.attributes.url
                    }
                });
                tabs.tabs('select',node.text);
            }else{
            tabs.tabs('add',{
                title:node.text,
                content:'Tab Body',
                href:node.attributes.url,
                closable:true
            });
            }
        }
    });
</script>
</html>
