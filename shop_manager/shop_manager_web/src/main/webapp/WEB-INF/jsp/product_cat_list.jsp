<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品管理列表</title>
</head>
<body>
<ul id="productCategory"></ul>
<div id="mm" class="easyui-menu" style="width:120px;">
    <div onclick="append()" data-options="iconCls:'icon-add'">添加</div>
    <div onclick="rename()" data-options="iconCls:'icon-add'">修改</div>
    <div onclick="remove()" data-options="iconCls:'icon-remove'">删除</div>
</div>
<script type="text/javascript">
   $(function(){
       $('#productCategory').tree({
           url: "/product_category/list"
       });
       $('#productCategory').tree({
           onContextMenu: function(e, node){
               e.preventDefault();
               $('#productCategory').tree('select', node.target);
               $('#mm').menu('show', {
                   left: e.pageX,
                   top: e.pageY
               });
           },
           //当tree编辑完成后触发
           onAfterEdit: function (node) {

               var _tree = $('#productCategory');

               if(node.id == 0){
                   $.post("/product_category/add",{parentId:node.parentId,name:node.text},function (data) {

                       if(data.status==200){
                           _tree.tree('update', {
                               target: node.target,
                               id : data.msg
                           })
                       }else{
                           $.messager.alert("添加分类失败");
                       }

                   })
               }else{

               }

           }
       });
   })
   function append() {

       var tree =  $('#productCategory');
       var node = tree.tree('getSelected');
       //append添加一个子节点到父节点
       tree.tree('append', {
           //这个三目运算符表示node是否为空，要是不为空则以node为父节点，若为空则以根节点为父节点
           parent:(node?node.target:null),
           //新建一个data的子节点，默认是以下信息
           data: [{
               id : 0,
               parentId : node.id,
               text:'新建分类'
           }]
       });
       //这两行是在添加以data为模板的子节点后，启用编辑，在编辑改写完后将会触发tree结构的onAfterEdit事件
       var _node = tree.tree("find",0);
       tree.tree("select",_node.target).tree("beginEdit",_node.target);

   };

   function rename() {
       var tree =  $('#productCategory');
       var node = tree.tree('getSelected');

       tree.tree("beginEdit",node.target);

   };

   function remove() {
       var tree =  $('#productCategory');
       var node = tree.tree('getSelected');


       $.post("/product_category/del",{parentId:node.attributes,id:node.id},function (data) {
           if(data.status==200){

               tree.tree("remove",node.target);
           }else{
               $.messager.alert("删除分类失败");
           }
       })
   }

</script>
</body>
</html>
