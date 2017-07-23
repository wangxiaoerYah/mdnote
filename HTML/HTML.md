# HTML5 音频
   https://developer.mozilla.org/zh-CN/docs/Web/HTML/Element/audio
   http://iwxy.me/archives/ht2.html?utm_source=caibaojian.com


# HTML简介
HTML指的是超文本标记语言(Hypertext Markup Language)
下面的代码是一个标准的HTML5示例
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<body>
</body>
</html>
```
几个常见标签的顺序问题：`<!DOCTYPE html>`必须放在任何标签之前，`<meta charset="utf-8">`建议放在`<title>`的前面，`<link>`标签建议放在`<script>`标签之前。

# HTML标准简史
W3C与WHATWG都参与HTML相关标准制定。

| Version   | Year |
| --------- | ---- |
| HTML      | 1991 |
| HTML 2.0  | 1995 |
| HTML 3.2  | 1997 |
| HTML 4.01 | 1999 |
| XHTML     | 2000 |
| HTML5     | 2014 |

[W3C官网](https://www.w3.org/)
[WAHTWG官网](https://whatwg.org/)

# HTML 基础
定义页面总体结构的标签 
` <html> <head> <body> `
指定页面标题名称和段落的标签
` <title> <h1>-<h6> <p> `
超链接标签
` <a href="https://www.w3schools.com">This is a link</a> `
图片标签
` <img src="w3schools.jpg"> `
注释标签
`<!-- -->`
**有条件的注释**
类似与下面这样，主要为了兼容IE
```html
<!--[if IE 9]>
    .... some HTML here ....
<![endif]-->
```

**空标签**
一些标签没有结束标签，比如`<br>(换行)` `<hr>(一条横线)`，空标签也可以这样`<br />`(一个空格加一个斜杠)被关闭。
HTML5空标签不需要被关闭，如何想严格兼容XML或者遵循XHTML则空标签也必须被关闭。
**推荐使用小写字母书写标签**

# HTML 属性
每个HTML元素都可以有属性，属性通常以键值对的形式出现。 类似与下面这样：
` <p title="I'm a tooltip"> This is a paragraph. </p> `
**属性书写建议用小写字母，建议加上引号(单双都可以)**
下表列举了一些常见的属性

| 属性    | 描述                  |
| ----- | ------------------- |
| alt   | 图片不能显示时，用alt里面的文字替代 |
| href  | 超链接地址               |
| id    | 为某元素起个专用名           |
| src   | 图片地址或js脚本地址         |
| style | 内联CSS样式             |
| title | 里面放文字，鼠标hover上去显示   |

# HTML 常见标签
下表给出了一些HTML常见标签的功能和用法。

| 标签      | 描述    |
| ------- | ----- |
| `<p>`   | 段落    |
| `<br>`  | 换行    |
| `<pre>` | 原格式输出 |
| `<hr>`  | 一条横线  |

# HTML 颜色
HTML支持三种颜色的写法：颜色英文名、 颜色RGB值、颜色的16进制表示。
比如红色的三种表示分别为：red、rgb(255, 0, 0)、 #FF0000。
[140种标准颜色名](https://www.w3schools.com/colors/colors_names.asp)

# HTML CSS
CSS stands for Cascading Style Sheets.
CSS can be added to HTML elements in 3 ways：
* Inline - by using the style attribute in HTML elements
* ` Internal - by using a <style> element in the <head> section `
* External - by using an external CSS file

**内嵌CSS**
  ` <h1 style="color:blue;">This is a Blue Heading</h1> `
**内部CSS**
```html
<!DOCTYPE html>
<html>
<head>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
```
**外联CSS**
```html
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
```

# HTML 链接
语法：` <a href="url">link text</a> `
用例：`<a href="https://www.baidu.com">百度</a>`
**注意：**url地址不写完整，可能会导致链接打不开。
## 链接的默认样式
* An unvisited link is underlined and blue
* A visited link is underlined and purple
* An active link is underlined and red
  改变链接的默认样式建议遵循以下设置顺序：
```html
<!DOCTYPE html>
<html>
<head>
<style>
a:link {
    color: green;
    background-color: transparent;
    text-decoration: none;
}
a:visited {
    color: pink;
    background-color: transparent;
    text-decoration: none;
}
a:hover {
    color: red;
    background-color: transparent;
    text-decoration: underline;
}
a:active {
    color: yellow;
    background-color: transparent;
    text-decoration: underline;
}
</style>
</head>
<body>

<p>You can change the default colors of links</p>

<a href="http://www.iplaysoft.com/" target="_blank">异次元软件世界</a> 

</body>
</html>

```

## 链接的target属性
target属性值可以是下面其中之一:
* _blank - 新窗口打开
* _self - 本窗口打开(大部分浏览器的默认设置)
* _parent - Opens the linked document in the parent frame
* _top - Opens the linked document in the full body of the window
* framename - Opens the linked document in a named frame
  下面的例子使链接在窗口打开：
  `<a href="http://www.runoob.com/" target="_blank">菜鸟教程</a>`

## 图片链接
`<a href="example.html"><img src="example.jpg"></a>`
## 书签式链接
也有把这种用法翻译成锚点的，就是使超链接在同一页面跳转。
看下面的例子：
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>书签式链接用法</title>
</head>
<body>

<p><a href="#C8">Jump to Chapter 8</a></p>

<h2>Chapter 1</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 2</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 3</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 4</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 5</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 6</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 7</h2>
<p>This chapter explains ba bla bla</p>

<h2 id="C8">Chapter 8</h2>
<p style="width: 200px">by default are presented bullets; and definition lists, which are presented as a series of
terms and the definitions associated with them.
Not only are there CSS properties specifically associated with lists, but lists can also be
styled using properties that apply to any block-level element, like lists and list items.
The full list of HTML tags discussed by default are presented bullets; and definition lists, which are presented as a series of
terms and the definitions associated with them.
Not only are there CSS properties specifically associated with lists, but lists can also be
styled using properties that apply to any block-level element, like lists and list items.
The full list of HTML tags discussed by default are presented bullets; and definition lists, which are presented as a series of
terms and the definitions associated with them.
Not only are there CSS properties specifically associated with lists, but lists can also be
styled using properties that apply to any block-level element, like lists and list items.
The full list of HTML tags discussed </p>

<h2>Chapter 9</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 10</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 11</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 12</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 13</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 14</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 15</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 16</h2>
<p>This chapter explains ba bla bla</p>

<h2>Chapter 17</h2>
<p>This chapter explains ba bla bla</p>

</body>
</html>
```

# HTML 图片
语法：
`<img src="url" alt="some_text" style="width:width;height:height;">`
图片格式支持三种：JPG、GIF、PNG。
alt属性为替代值，比如网速太卡，图片刷不出来，就显示alt里面的文字。
w3schools建议图片最好加上宽高，否则可能会出现flicker(闪动)。
图片设置宽高建议使用内嵌样式(stlye属性)来设置，stlye属性具有最高优先级，width和height属性，内联CSS样式以及外部CSS样式都不能修改使用style属性来设置的宽高。
## 图片超链接
使用方法如下：
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>图片超链接</title>
	<style>
		img { 
			background-color: #999;  
			display: block;
			width: 400px;
			height: 400px;
		}
	</style>
</head>
<body>

<img src="example.jpg" usemap="#mymap">

<map name="mymap">
	<area shape="rect" coords="0, 0, 50, 50" title="左上角50x50热点区" href="1.jpg">
	<area shape="rect" coords="350, 350, 400, 400" title="右下角50x50热点区" href="1.jpg">

	<area shape="circle" coords="200, 200, 50" title="中心半径50px热点区" href="1.jpg">
</map>

</body>
</html>
```
对上面代码的解读，为了方便解释我把图片设置了宽高并加了背景色。
`img`标签的usemap属性，需要和map标签的name属性匹配。
`area`标签的shape属性rect、circle分别表示热点去是矩形还是圆形。
coords属性是用来确定矩形范围或者圆形范围的。
对于**矩形**，前两个坐标0, 0表示矩形左上角坐标，**整张图片最左上角坐标为0，0**，同理对于矩形最后两个坐标表示矩形的右下角坐标，4个坐标合起来就完全确定了一个小矩形在一张图片里的位置。
对于圆形，前两个坐标是确定圆心坐标，最后一个坐标是确定圆的半径。

# HTML 表格
一个简单的表格示例如下：
```html
<table>
	<tr>
		<th>公司</th>
		<th>国家</th>
	</tr>
	<tr>
		<td>阿里巴巴</td>
		<td>中国</td>
	</tr>
	<tr>
		<td>微软</td>
		<td>美国</td>
	</tr>
</table>
```

## 表格分组
```html
<table>
	<thead>
		<tr>
		<th>Month</th>
		<th>Savings</th>
		</tr>
	</thead>

	<tbody>
		<tr>
		<td>January</td>
		<td>$100</td>
		</tr>
		<tr>
		<td>February</td>
		<td>$80</td>
		</tr>
	</tbody>
	
	<tfoot>
		<tr>
		<td>Sum</td>
		<td>$180</td>
		</tr>
	</tfoot>
</table>
```

## 表格的边框
为表格加上边框：
```css
table, th, td {
    border: 1px solid black;
}
```
可以对表格的table、th、td元素单独设定边框，例如下面的例子：
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>对表格的元素单独设定边框</title>
	<style>
		table {  border: 1px dashed red;	}
		th { border: 1px solid blue;  }
		td {border: 1px solid purple;}
	</style>
</head>
<body>

<table>
	<tr>
		<th>公司</th>
		<th>国家</th>
	</tr>
	<tr>
		<td>阿里巴巴</td>
		<td>中国</td>
	</tr>
	<tr>
		<td>微软</td>
		<td>美国</td>
	</tr>
</table>

</body>
</html>
```

## 表格简单知识
边框合并：` table{ border-collapse: collapse; } `
表格里面的文字可以加内边距`padding`，可以设置`text-align`对齐方式。

## 表格的合并
**合并多行 **
```html
<table style="width:100%">
  <tr>
    <th>Name</th>
    <th colspan="2">Telephone</th>
  </tr>
  <tr>
    <td>Bill Gates</td>
    <td>55577854</td>
    <td>55577855</td>
  </tr>
</table>
```
**合并多列**
```html
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style>
</head>
<body>

<h2>Cell that spans two rows:</h2>
<table style="width:100%">
  <tr>
    <th>Name:</th>
    <td>Bill Gates</td>
  </tr>
  <tr>
    <th rowspan="2">Telephone:</th>
    <td>55577854</td>
  </tr>
  <tr>
    <td>55577855</td>
  </tr>
</table>

</body>
</html>
```

## 表格的标题
```html
<table style="width:100%">
  <caption>Monthly savings</caption>
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
  <tr>
    <td>February</td>
    <td>$50</td>
  </tr>
</table>
```

# 列表
HTML列表分三种：有序列表、无序列表、定义列表。

## 有序列表
标准有序列表示例。
```html
<h1>How to Boil an Egg</h1>
<ol>
	<li>Put eggs in a pot filled with cold water</li>
	<li>Bring the water to a boil</li>
	<li>Take the pot off the heat, cover it, and let it sit for
	12 minutes</li>
	<li>Remove the eggs from the hot water and cool them by
	running water over them or placing them in a bowl of
	ice water to cool off</li>
	<li>Peel and eat</li>
</ol >
```
有序列表可以设置编号样式
` <ol style="list-style-type: lower-alpha;"> `
下面的表格展示了`list-style-type`可以设定的值，及其功能

| CSS Value   | Description                              |
| ----------- | ---------------------------------------- |
| decimal     | Standard Arabic numerals ( 1 ,  2 ,  3 ,  4 , and so on) |
| lower-alpha | Lowercase letters ( a ,  b ,  c ,  d , and so on) |
| upper-alpha | Uppercase letters ( A ,  B ,  C ,  D , and so on) |
| lower-roman | Lowercase Roman numerals ( i ,  ii ,  iii ,  iv , and so on) |
| upper-roman | Uppercase Roman numerals (that is, I, II, III, IV, and |

## 无序列表
标准无序列表示例。
```html
<p>Things I like to do in the morning:</p>
<ul>
	<li>Drink a cup of coffee</li>
	<li>Watch the sunrise</li>
	<li>Listen to the birds sing</li>
	<li>Hear the wind rustling through the trees</li>
	<li>Curse the construction noises for spoiling the peaceful mood</li>
</ul 
```
同有序列表一样，无序列表也可以设置`list-style-type`属性，其取值可以是`disc`(实心圆，默认样式) `square`(实心正方形) `circle`(空心圆)。

下面的示例比较了三种样式的效果。
```html
<ul style="list-style-type: disc">
	<li>DAT - Digital Audio Tapes</li>
	<li>CD - Compact Discs</li>
	<li>Cassettes</li>
</ul>
<ul style="list-style-type: square">
	<li>DAT - Digital Audio Tapes</li>
	<li>CD - Compact Discs</li>
	<li>Cassettes</li>
</ul>
<ul style="list-style-type: circle">
	<li>DAT - Digital Audio Tapes</li>
	<li>CD - Compact Discs</li>
	<li>Cassettes</li>
</ul>
```
项目符号还可以是图片，其设置语法如下：
`<ul style="list-style-image: url(bullet.gif)"> <li>Example</li> </ul>`

## 自定义列表
标准示例如下：
```html
<dl>
	<dt>Basil</dt>
	<dd>hello world!</dd>
	
	<dt>Oregano</dt>
	<dd>Perennial. Sends out underground runners and is difficult
	to get rid of once established.</dd>
	
	<dt>Coriander</dt>
	<dd>Annual. Also called cilantro, coriander likes cooler
	weather of spring and fall.</dd>
</dl>
```
# HTML 表单
一个简单的表单示例：
```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>表单demo</title>
</head>
<body>
<form action=""  method="get">
<div>
	<label for="username">账号<label>
	<input type="text" name="username">
</div>
<div>
	<label for="password">密码</label>
	<input type="password" name="password">
</div>
<div>
	<input type="submit" value="登陆">
</div>
</form>
</body>
</html>
```
form标签的块级元素独占一行。
input标签的name属性若果省略，则该项内容不会被提交到服务器。
method属性如果不指定，默认使用get方法。
## `<form>`标签属性
* `action` - 处理当前表单的脚本地址，如果为空则默认提交给当前网页。
* `method` - 以`get`方式提交表单不加密，明文传送，在URL中可以直接看到表单提交的值。`post`方式提交的表单加密。
* `enctype` - 默认值为`application/x-www-form-urlencoded`，当表单包含文件上传字段时需要将`enctype`设置为`multipart/form-data`。

## 表单控件
### label
label标签的for属性用来将其与相应的控件关起起来，其for属性的值应与控件的id或name属性值相同。
```
<label for="username">用户名</label>
<input type="text" name="username">
```
如果将表单控件放在label元素内，则可以省略属性for，如下所示：
`<label>Username<input type="text" name="username"></label>`

### 文本控件
`<input type="text" id="petname">`
文本控件的常用属性介绍如下：
* size， 用来修改文本控件的的大致长度。（不是字符数量）
* maxlength，限制用户输入的最大字符数。
* value， 为文本控件添加默认值。
* placehoder， 文本字段的提示信息。
* required，如果有该属性则该字段必须填写才能提交表单。
* pattern，指定一个正则表达式，要求控件值必须与之匹配。

### 密码控件
`<input type="password" size="8" maxlength="8">`

### 提交按钮
`<input type="submit" value="send_form_data">`
表单可包含多个提交按钮。
提交按钮如果指定了name属性值，则用户单击该按钮属性的value值将被发送给服务器。

### 重置按钮
`<input type="reset" value="clear_all_data">`
### 复选框
```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>checkbox demo</title>
</head>
<body>
<form>
<p>please chose the pet that you like ?</p>
<label><input type="checkbox" name="pet" value="dog">dog</label>
<label><input type="checkbox" name="pet" value="cat">cat</label>
<label><input type="checkbox" name="pet" value="pig">pig</label>
<label><input type="checkbox" name="pet" value="monkey">monkey</label>
</form>
</body>
</html>
```
同一组复选框其name属性值相同。将复选框放在label标签中，单击文字也能直接选中该复选框。

### 单选按钮
```html
<form>
<p>Select a color:</p>
<label><input type="radio" name="color" value="red">Red</label>
<label><input type="radio" name="color" value="blue">Blue</label>
<label><input type="radio" name="color" value="green">Green</label>
</form>
```
### 常规按钮
`<button>我是按钮</button>`
`<input type="button" value="我是按钮">`

### 隐藏的表字段
`<input type="hidden" id="uid" value="1402">`，通常配合服务器端获取数据使用。

### 文件上传控件
与正常控件相比需要单独设置下form标签的enctype属性值为：multipart/form-data。
```html
<form action="" enctype="multipart/form-data" method="post">
<input type="file" id="new_file">
<input type="submit">
</form>
```

### 文本框
```html
<textarea rows="10" cols="60">Enter your answer here.</textarea>
```
### 下拉菜单
```html
<label for="location">请选择一个旅游目的地</label>
<select id="location">
	<option>印度</option>
	<option selected>中国</option>
	<option>美国</option>
	<option>英国</option>
</select>
```
### 表单综合案例
```html
<!doctype html>
<html>
<head>
<title>表单综合案例</title>
<style>
form div {
	margin-bottom: 1em;
}

div.submit input {
	margin-left: 165px;
}

label.field {
	display: block;
	float: left;
	margin-right: 15px;
	width: 150px;
	text-align: right;
	outline: 2px dashed green;
}

label.required {
	font-weight: bold;
}
</style>
</head>
<body>
<h1>Registration Form</h1>
<form action="/register" method="post" enctype="multipart/form-data">

<div>
	<label class="required field" for="name">Name</label>
	<input id="name">
</div>

<div>
	<label class="required field">Gender</label>
	<label><input type="radio" name="gender" value="male"> male</label>
	<label><input type="radio" name="gender" value="female"> female</label>
</div>

<div>
	<label class="required field">Operating System</label>
	<select id="os">
	<option value="windows">Windows</option>
	<option value="macos">Mac OS</option>
	<option value="linux">Linux</option>
	<option value="other">Other ...</option>
</select>
</div>

<div>
	<label class="field">Toys</label>
	<label><input type="checkbox" name="toy" value="digicam"> Digital
	Camera</label>
	<label><input type="checkbox" name="toy" value="phone"> Smartphone
	</label>
	<label><input type="checkbox" name="toy" value="tablet"> Tablet</label>
</div>

<div>
	<label class="field" for="portrait">Portrait</label>
	<input type="file" id="portrait">
</div>

<div>
	<label class="field" for="bio">Mini Biography</label>
	<textarea id="bio" rows="6" cols="40"></textarea>
</div>

<div class="submit">
	<input type="submit" value="register">
</div>

</form>
</body>
</html>
```
### 禁用控件和只读控件
`<input type="text" disabled value="我被禁用了。">`
`<input type="text" readonly value="我是只读的。">`

## 表单分组



# HTML 块级元素与行内元素
A **block-level** element always starts on a new line and takes up the full width available (stretches out to the left and right as far as it can).
常见的块级元素有：
`<div> <h1>-<h6> <p> <form>`
An **inline element** does not start on a new line and only takes up as much width as necessary.
常见的行内元素有` <span> <a> <img> `
重要的分组标签：`<div> <span>`，这个两个标签本身没有样式，配合CSS经常作为网页的结构与布局使用。

# HTML 字符实体
一些在键盘上打不出来的或者和HTML语法冲突的符号（比如`>`），需要使用HTML字符实体来显示，字符实体大小写敏感。
常用字符实体如下：

| Result | Description          | Entity Name | Entity　Number |
| ------ | -------------------- | ----------- | ------------- |
|        | non-breaking space   | `&nbsp;`    | `&#160;`      |
| `<`    | less than            | `&lt;`      | `&#60`        |
| `>`    | great than           | `&gt;`      | `&#62;`       |
| `&`    | ampersand            | `&amp;`     | `&#38;`       |
| ®      | registered trademark | `&reg;`     | `&#174;`      |
| ©      | copyright            | `&copy;`    | `&#169;`      |

# HTML 字符编码
常见的编码方式有ASCII、ANSI（Windows-1252）、ISO-8859-1。
ASCII是最早的字符编码标准，其编码值从0-127，后来的编码标准大都兼容ASCII。[ASCII码对照表](http://tool.oschina.net/commons?type=4)
ANSI是Windows默认字符编码。
ISO-8859-1是HTML4默认的编码。
UTF-8是国际通用编码。
设置HTML文档编码的方法：
HTML4：`<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">`
HTML5：`<meta charset="UTF-8">`
为了保证兼容，以及不必要的麻烦，推荐所有文档使用**UTF-8**编码。


# HTML iframe
syntax：`<iframe src="URL"></iframe>`
设定宽高：` <iframe src="demo_iframe.htm" height="200" width="300"></iframe> `
设置边框：` <iframe src="demo.htm" style="border:1px solid red;"></iframe> `
**target for a link**，点击一个链接，在当前窗口的框架中打开指定网页。注意链接的`target`属性要等于框架的`name`属性。
```html
<!DOCTYPE html>
<html>
<body>

<iframe height="300px" width="100%" src="demo_iframe.htm" name="iframe_a"></iframe>

<p><a href="https://www.baidu.com" target="iframe_a">百度</a></p>

<p>When the target of a link matches the name of an iframe, the link will open in the iframe.</p>

</body>
</html>
```

# HTML File Path
文件夹路径分为：相对路径和绝对路径。下表给出了它们的写法：

| Path                      | Description       |
| :------------------------ | :---------------- |
| src="picture.jpg"         | 当前文件夹             |
| src="images/picture.jpg"  | 当前文件夹下面的images文件夹 |
| src="/images/picture.jpg" | 根文件夹下的images文件夹   |
| src="../picture.jpg"      | 当前文件夹下的上一层文件夹     |




# HTML Formatting
一些标签可以用来格式化文本，如加粗、加下划线等。
用法：
```html
<b> - Bold text
<strong> - Important text
<i> - Italic text
<em> - Emphasized text
<mark> - Marked text
<small> - Small text
<del> - Deleted text
<ins> - Inserted text
<sub> - Subscript text(下标)
<sup> - Superscript text(上标)
```
实例：
```html
<b>This text is bold</b> <br>
<strong>This text is strong</strong> <br>
<i>This text is italic</i> <br>
<em>This text is emphasized</em> <br>
<h2>HTML <small>Small</small> Formatting</h2>
<h2>HTML <mark>Marked</mark> Formatting</h2>
<p>My favorite color is <del>blue</del> red.</p>
<p>My favorite <ins>color</ins> is red.</p>
<p>This is <sub>subscripted</sub> text.</p>
<p>This is <sup>superscripted</sup> text.</p>
```

# HTML Quotation
个人感觉不太常用，在这里贴张表格。详情参考：
https://www.w3schools.com/html/html_quotation_elements.asp

| Tag            | Description                              |
| -------------- | ---------------------------------------- |
| `<abbr>`       | Defines an abbreviation or acronym       |
| `<address>`    | Defines contact information for the author/owner of a document |
| `<bdo>`        | Defines the text direction               |
| `<blockquote>` | Defines a section that is quoted from another source |
| `<cite>`       | Defines the title of a work              |
| `<q>`          | Defines a short inline quotation         |

# HTML Head
HTML head Elements

| 标签         | 描述                                       |
| ---------- | ---------------------------------------- |
| `<head>`   | Defines information about the document   |
| `<title>`  | Defines the title of a document          |
| `<base>`   | Defines a default address or a default target for all links on a page |
| `<link>`   | Defines the relationship between a document and an external resource |
| `<meta>`   | Defines metadata about an HTML document  |
| `<script>` | Defines a client-side script             |
| `<style>`  | Defines style information for a document |

`<base>` 标签用法：
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<base href="img/" target="_blank">
</head>
<body>

<img src="1.jpg">
<p>因为我们在base标签里设置了基地址，所以这张
图片会自动在当前文件夹下的img文件夹寻找。</p>

<p><a href="http://www.itellyou.cn/">我告诉你</a></p>
<p>base标签target属性设置成_blank，所以本页面所有超链接都在
新窗口打开</p>

</body>
</html>
```

## HTML meta Element
Define the character set used：
`<meta charset="UTF-8">`
Define a description of your web page：
`<meta name="description" content="Free Web tutorials">`
Define keywords for search engines：
`<meta name="keywords" content="HTML, CSS, XML, JavaScript">`
Define the author of a page：
`<meta name="author" content="John Doe">`
**每隔30秒对网页进行刷新**
`<meta http-equiv="refresh" content="30">`
一个meta标签示例如下：
```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="description" content="Free Web tutorials">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta name="author" content="John Doe">
  <meta http-equiv="refresh" content="3">
</head>
<body>

<p>All meta information goes before the body.</p>

</body>
</html>
```

# HTML Layout
HTML5新增了一些语义化的布局元素。
![01_img_sem_elements.gif](img/01_img_sem_elements.gif)
* `<header>` - Defines a header for a document or a section
* `<nav>` - Defines a container for navigation links
* `<section>` - Defines a section in a document
* `<article>` - Defines an independent self-contained article
* `<aside>` - Defines content aside from the content (like a sidebar)
* `<footer>` - Defines a footer for a document or a section
* `<details>` - Defines additional details
* `<summary>` - Defines a heading for the `<details>` element

对HTML页面进行布局有4种方法：
* HTML tables
* CSS float property
* CSS framework(CSS框架布局如使用bootstrap)
* CSS flexbox
  用表格布局几乎已被废弃，严重不推荐。
  **flexbox**IE10及以下，不支持。
