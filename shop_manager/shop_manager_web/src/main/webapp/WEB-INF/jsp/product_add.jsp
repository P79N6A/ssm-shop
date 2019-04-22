<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/22
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
<div style="padding: 10px 10px 10px 10px;">
<form id="product_add_form" method="post">
   <table>
       <tr><td>商品名称</td><td><input class="easyui-textbox" data-options="required:true,iconCls:'icon-search'" value="名称" style="width:300px"></td></tr>
       <tr><td>商品分类</td><td>
           <select id="cc" class="easyui-combobox" name="dept" style="width:200px;">
           <option value="aa">aitem1</option>
           <option>bitem2</option>
           <option>bitem3</option>
           <option>ditem4</option>
           <option>eitem5</option>
           </select>
       </td></tr>
       <tr><td>市场价格</td><td><input type="text" class="easyui-numberbox" value="100" data-options="min:0,max:99999999,required:true,precision:2"></td></tr>
       <tr><td>商品价格</td><td><input type="text" class="easyui-numberbox" value="100" data-options="min:0,max:99999999,required:true,precision:2"></td></tr>
       <tr><td>商品编号</td><td><input type="text" class="easyui-numberbox" value="100" data-options="required:true"></td></tr>
       <tr><td>商品图片</td><td><a id="btn" href="#" class="easyui-linkbutton">上传图片</a></td></tr>
       <tr><td>商品描述</td><td> <script id="editor" type="text/plain" style="width:800px;height:500px;"></script></td></tr>
   </table>
</form>
    <div align="center">
        <a id="btn" href="#" class="easyui-linkbutton" onclick="submitForm()">提交</a>
        <a id="btn" href="#" class="easyui-linkbutton">重置</a>
    </div>
</div>
<script>
    var ue = UE.getEditor('editor');
</script>

