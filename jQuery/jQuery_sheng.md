# jQuery 简易手册
[jQuery官方学习中心](http://learn.jquery.com/) 
**注意**： 本笔记下面的代码需要jQuery库支持才能正常使用。

## jQuery简介
jQuery库是Web脚本编程的通用抽象层。
JQuery是2006年1月14诞生，作者John Resig.
此笔记编时jQuery最新版本为2016年9月22发布的3.1.1

### jQuery核心功能
1. HTML 元素选取
2. HTML 元素操作
3. CSS 操作
4. HTML 事件函数
5. html 特效和动画
6. HTML DOM 遍历和修改
7. AJAX
   以上7个核心功能，使用原生JavaScript也可以实现，只不过使用jQuery更快捷。

### jQuery优点
其实就是对元素原生JavaScript进行各种优化。
1. 简化在DOM中选择元素的任务
2. 优化和增强事件处理机制

## jQuery初步
### 基础语法
jQuery 语法是通过选取 HTML 元素，并对选取的元素执行某些操作。
基础语法： `$(selector).action()`
* 美元符号定义 jQuery
* 选择符（selector）"查询"和"查找" HTML 元素
* jQuery 的 action() 执行对元素的操作
  实例:
  $(this).hide() - 隐藏当前元素
  $("p").hide() - 隐藏所有段落
  $("p .test").hide() - 隐藏所有 class="test" 的段落
  $("#test").hide() - 隐藏所有 id="test" 的元素

### 页面加载完成知多少
推荐把样式标签放在脚本标签之前。
`window.onload`事件会在页面完全加载完成才会触发，包括图片等资源。
`$(document).ready()`则会在文档DOM树完全就绪时就会触发，并不意味着所有关联文件都下载完毕。

### 文档就绪事件
```html
$(document).ready(function(){

   // 开始写 jQuery 代码...

}); 
```
简写写法
```html
$(function(){

// 开始写 jQuery 代码...

}); 
```

## 选择页面元素
jQuery利用了**CSS选择符**来快捷的在DOM中选择元素或元素集合。

### 使用$()函数
美元符号$可以认为是标识符jQuery的"别名"。
`$()`函数接受CSS选择符作为参数，返回页面中对应元素的jQuery对象，然后我们就可以使用jQuery方法。
下表显示了基本的选择符及其在jQuery中使用$()函数选择
|  选择符 |     CSS     |           jQuery |           说明           |
| ---: | :---------: | ---------------: | :--------------------: |
|  标签名 |    p {}     |           $("p") |       取得文档中所有的段落       |
|   id | #some-id {} |    $("#some-id") |  取得文档中id为some-id的一个元素  |
|    类 | .some-class | $(".some-class") | 取得文档中类为some-class的所有元素 |

选择元素案例参考
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>jQuery Example</title>
	<script src="jquery.js"></script>
</head>
<body>
	<a href="1.html">Ａ link</a>
	<script>
		$(document).ready(function() {
			$("a").click(function(event) {
				alert("You clicked on a link to " + this.href);
				return false;
			});
		});
		// 单击一个链接，显示其网址。
	</script>
</body>
</html>
```
高级元素选择请参考http://www.w3cschool.cn/jquery/xs75ofnl.html

### 更多方法
* `$("span");` - 全部span元素
* `$("#elem");` - id为"elem"的HTML元素
* `$(".classname");` - 类为"classname"的HTML元素
* `$("div#elem");` - id为"elem"的`<div>`元素
* `$("ul li a.menu");` - 类为menu且嵌套在列表里的锚点
* `$("p > span");` - p的直接子元素span
* `$("input[type=password]");` - 具有指定类型的输入元素
* `$("p:first");` - 页面上第一个段落
* `$("p:even");` - 全部偶数段落

jQuery还有一些自己定制的选择符。
* `$(":header");` - 标题元素
* `$(":button");` - 全部按钮元素
* `$(":radio");` - 单选钮
* `$(":checkbox");` - 选择框
* `$(":checked");` - 选中状态的选择框或单选按钮

## 事件
常见的事件绑定参考

## jQuery HTML
### 获取内容
下面的例子演示如何通过 jQuery text() 和 html() 方法来获得内容：
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>text()和html()的使用</title>
	<script src="jquery.js"></script>
</head>
<body>
	<script>
		$(document).ready(function() {
		  $("#btn1").click(function() {
			alert("Text: " + $("#test").text());
		  });
		  $("#btn2").click(function(){
			alert("HTML: " + $("#test").html());
		  });
		});
	</script>
	
	<p id="test">这是段落中的 <b>粗体</b> 文本。</p>
	<button id="btn1">显示文本</button>
	<button id="btn2">显示 HTML</button>
</body>
</html>
```

### 获取字段值


下面的例子演示如何通过 jQuery val() 方法获得输入字段的值：
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>使用val()获取值</title>
	<script src="jquery.js"></script>
</head>
<body>
	<script>
	$(document).ready(function(){
	  $("button").click(function(){
		alert( "值为: " + $("#test").val() );
	  });
	});
	</script>
	
	<p>名称: <input type="text" id="test" value="xys4k@qq.com"></p>
	<button>显示值</button>
</body>
</html>
```

### 获取属性
下面的例子演示如何获得链接中 href 属性的值：
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>使用attr()获取属性值</title>
	<script src="jquery.js"></script>
	<script>
		$(document).ready(function() {
		  $("button").click(function(){
			alert($("#runoob").attr("href"));
		  });
		});
	</script>
</head>

<body>
	<p><a href="http://www.w3cschool.cn" id="runoob">W3Cschool教程</a></p>
	<button>显示 href 属性的值</button>
</body>
</html>
```

### 修改内容
下面的例子演示如何通过 text()、html() 以及 val() 方法来修改内容：
```html
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="jquery.js">
</script>
<script>
	$(document).ready(function() {
	  $("#btn1").click(function(){
		$("#test1").text("Hello world!");
	  });
	  $("#btn2").click(function(){
		$("#test2").html("<b style='color: red;'>Hello world!</b>");
	  });
	  $("#btn3").click(function(){
		$("#test3").val("200K");
	  });
	});
</script>
</head>

<body>
	<p id="test1">这是一个段落。</p>
	<p id="test2">这是另外一个段落。</p>
	<p>输入框: <input type="text" id="test3" value="W3Cschool教程"></p>
	<button id="btn1">修改文本</button>
	<button id="btn2">修改 HTML</button>
	<button id="btn3">修改值</button>
</body>
</html>
```

### 修改属性
下面的例子演示如何修改链接中 href 属性的值：
```javascript
$("button").click(function() {
	$("#w3s").attr("href", "http://www.w3cschool.cn/jquery");
});
```
下面的例子演示了使用attr()修改多个属性值
```javascript
$("button").click(function() {
	$("#w3s").attr({
		"href" : "http://www.w3cschool.cn/jquery",
		"title" : "jQuery 教程"
	});
});
```

### jQuery Ajax
下面的案例演示了使用jQuery Ajax获取简单的txt文本内容。
注意：此案例要成功演示必须放在服务器环境中执行

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="jquery.js">
</script>
<script>
	/* hello.txt里面的内容可以类似这样:
		<h2> hello world! hello world! 2 </h2> */
	$(document).ready(function(){
	  $("button").click(function() {
		$("#div1").load("hello.txt");
	  });
	});
</script>
</head>
<body>

<div id="div1"><h2>使用 jQuery AJAX</h2></div>
<button>获取当前目录文件hello.txt的内容</button>

</body>
</html>
```
## jQuery 遍历
`find()` 遍历指定元素的所有后代元素，用法见链接
http://www.w3cschool.cn/tryrun/showhtml/tryjquery_traversing_find

`children()`返回指定元素的直接子元素，用法见链接
http://www.w3cschool.cn/jquery/traversing-children.html

`jQuery.extend()`用于合并两个对象
http://www.w3cschool.cn/jquery/jquery-extend.html

`jQuery eq() 方法` 选择带有索引号的指定元素
http://www.w3cschool.cn/jquery/traversing-eq.html

## 阻止默认行为
下面的代码阻止a链接被打开
```javascirpt
$("a").click(function(event){
	event.preventDefault();
});
```