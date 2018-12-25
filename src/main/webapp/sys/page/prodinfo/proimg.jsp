<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/sys/header.jsp"%>
<title>图片维护</title>
<!-- <script type="text/javascript" src="/jd/sys/common/js/jquery-3.3.1.js"></script> -->
</head>
<body>
	<fieldset class="layui-elem-field" style="margin: 10px; padding: 15px;">
		<legend>图片维护</legend>
 
<div class="layui-upload">
  <button type="button" class="layui-btn layui-btn-normal" id="testList">选择多文件</button> 
  <div class="layui-upload-list">
    <table class="layui-table">
      <thead>
        <tr><th>文件名</th>
        <th>大小</th>
        <th>状态</th>
        <th>操作</th>
      </tr></thead>
      <tbody id="demoList"></tbody>
    </table>
  </div>
  <button type="button" class="layui-btn" id="testListAction">开始上传</button>
</div> 
<div class="layui-form">
<table class="layui-table">
			<colgroup>
				
				<col width="30%">
				<col width="40%">
				<col width="30%">
				
			</colgroup>
			<thead>
				<tr>
					
					<th>名称</th>
					<th>图片</th>
					<th>操作</th>
					
				</tr>
			</thead>
			<tbody id="demolist2"></tbody>
		</table>
</div>
</fieldset>                    
	<script type="text/javascript">
	var code = '<%= request.getParameter("id")%>';
	var demoListView = $('#demoList')
	  ,uploadListIns = layui.upload.render({
	    elem: '#testList'
	    ,url: con.app+'/imgController/upload.do'
	    ,data:{code:code}
	    ,accept: 'file'
	    ,multiple: true
	    ,auto: false
	    ,bindAction: '#testListAction'
	    ,choose: function(obj){   
	      var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
	      //读取本地文件
	      obj.preview(function(index, file, result){
	        var tr = $(['<tr id="upload-'+ index +'">'
	          ,'<td>'+ file.name +'</td>'
	          ,'<td>'+ (file.size/1014).toFixed(1) +'kb</td>'
	          ,'<td>等待上传</td>'
	          ,'<td>'
	            ,'<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>'
	            ,'<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>'
	          ,'</td>'
	        ,'</tr>'].join(''));
	        
	        //单个重传
	        tr.find('.demo-reload').on('click', function(){
	          obj.upload(index, file);
	        });
	        
	        //删除
	        tr.find('.demo-delete').on('click', function(){
	          delete files[index]; //删除对应的文件
	          tr.remove();
	          uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
	        });
	        
	        demoListView.append(tr);
	      });
	    }
	    ,done: function(res, index, upload){
	      if(res.code == 0){ //上传成功
	    	init();
	        var tr = demoListView.find('tr#upload-'+ index)
	        ,tds = tr.children();
	        tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
	        tds.eq(3).html(''); //清空操作
	        return delete this.files[index]; //删除文件队列已经上传成功的文件
	      }
	      this.error(index, upload);
	    }
	    ,error: function(index, upload){
	      var tr = demoListView.find('tr#upload-'+ index)
	      ,tds = tr.children();
	      tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');
	      tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
	    }
	  });
	init();
	function init(){
		var proid = '<%= request.getParameter("id")%>';
		ajax('/imgController/getList.do',{proid:proid},'json',function(data){
			var html = "";
			$.each(data.list,function(i,dom){
				var id = dom.id;
				console.log(dom);
// 				html += "<tr><td>"+dom.url+"</td><td><img src = '/imge/"+dom.url+"' alt='"+dom.url+"' class = 'layui-upload-img'></td><td><input type = 'button' class='layui-btn' onclick='delImg("+id+")' value='删除'/>"
				html+="<tr><td>"+dom.url+"</td><td>"
			 +'<img src="/imge/'+dom.url+'" alt="'+dom.url+'"/></td><td>'
			 +"<input type='button' class='layui-btn' onclick='delImg(\""+id+"\")' value='删除'/>";

if(dom.type==1){
					 html+="<input type='button' class='layui-btn' onclick='void' value='主图' ";
				 }else{
					 html+="<input type='button' class='layui-btn' onclick='setMain(\""+dom.proid+"\",\""+id+"\")' value='设为主图'";
				 }
				html +="</td></tr>"
			})
			 $("#demolist2").html(html);
		})
	}
	 function delImg(id){
		 openConfirm(function (index){
		 ajax('/imgController/del.do',{id:id},'text',function(data){
			 
				if(data==1){
					 layer.msg("删除成功");
					location.reload();
				}else{
					 layer.msg("删除失败");
				}
			})
		 })
	 };
	  function setMain(proid,id){
		  ajax('/imgController/style.do',{id:id,proid:proid},'text',function(data){
			  console.log(data);
				if(data==1){
					 layer.msg("设置成功");
					location.reload();
				}else{
					 layer.msg("设置失败");
				}
			})
	  };
	</script>
</body>
</html>