# HTML5概况
HTML5按照其功能可以分为以下几个组：
* 语义：能够让你更恰当地描述你的内容是什么。
* 连通性：能够让你和服务器之间通过创新的新技术方法进行通信。
* 离线 & 存储：能够让网页在客户端本地存储数据以及更高效地离线运行。
* 多媒体：使 video 和 audio 成为了在所有 Web 中的一等公民。
* 2D/3D 绘图 & 效果：提供了一个更加分化范围的呈现选择。
* 性能 & 集成：提供了非常显著的性能优化和更有效的计算机硬件使用。
* 设备访问 Device Access：能够处理各种输入和输出设备。
* 样式设计: 让作者们来创作更加复杂的主题吧！

# 多媒体播放
在HTML5规范之前，网页中播放视频需要借助第三方插件。
HTML5中提供了`video`和`audio`标签，可以直接在浏览器中播放视频和音频。
HTML5中视频和音频标签的属性和方法及其使用，都大同小异。我们放在一块介绍。
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>HTML5多媒体</title>
</head>
<body>
<video id="my_video" width="300" height="300" src="FriendsS01E01.mp4" 
controls autoplay preload="meta" poster="FriendsS01E01.jpg">
	你的浏览器不支持video标签，可以考虑升级浏览器。
</video>

<br><br><br><hr>

<audio src="爱情转移.mp3" autoplay controls></audio>
</body>
</html>
```

## audio和video元素所支持的媒体格式
由于专利等问题，各大浏览器对音、视频格式支持都不统一。具体内容太过繁琐，浏览器也在更新，
列一张表格实在解释不清。
视频主要支持以下格式: mp4 webm ogg
音频主要支持以下格式: mp3 ogg wav
详细内容参考:
https://developer.mozilla.org/en-US/docs/Web/HTML/Supported_media_formats

### 使用source标签解决格式兼容问题
为了解决浏览器对视频、音频格式的支持问题，可以使用source标签为视频或音频指定多个媒体
资源。
source标签的属性如下:
* src - 指定要播放的视频或音频的URL地址
* type - 用于设置媒体资源的MIME类型。
  视频的MIME类型包括video/ogg、 video/mp4、 video/webm,
  音频的MIME类型包括audio/ogg、audio/mpeg、audio/x-wav
```html
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	<title>播放视频和音频</title>
  </head>
  <body>

    <div id="videoDiv">
        <video poster="images/iceage3.jpg" controls>
            <source src="video/iceage4.mp4" type="video/mp4" />
            <source src="video/iceage4.webm" type="video/webm" />
            <source src="video/iceage4.ogv" type="video/ogg" />
            您的浏览器不支持<video />标签
        </video>
    </div>    
    <div id="audioDiv" >
        <audio controls>
            <source src="audio/爱情转移.mp3" type="audio/mpeg" />
            <source src="audio/爱情转移.ogg" type="audio/ogg" />
            <source src="audio/爱情转移.wav" type="audio/x-wav" />
            您的浏览器不支持<audio />标签
    	</audio>
    </div>

  </body>
</html>
```


## HTML5多媒体API
HTML5中提供了Video和Audio对象，用于控制视频或音频，它们的使用方法非常相识。
Video和Audio对象常用的属性如下：
* width - 设置视频播放器的宽度
* height - 设置视频播放器的高度
* poster - 设置视频下载时显示的图像
* autoplay - 设置页面加载完成后是否自动播放
* controls - 设置是否加载控件
* currentSrc - 返回视频或音频的URL
* duration - 返回视频或音频的总长度（单位秒）
* defaultMuted - 设置视频或音频默认是否静音
* muted - 设置是否静音
* ended - 返回视频或音频是否播放结束
* readyState - 返回视频或音频的就绪状态
* paused - 返回视频或音频是否暂停
* volume - 设置或返回视频或音频的音量
* loop - 设置是否循环播放
* networkState - 返回视频或音频当前网络状态
* src - 设置或返回视频或音频的src属性值
* preload - 设置是否预加载视频，取值auto、meta、none。设置autoplay属性时，preload属性将被忽略

**Video和Audio的常用方法如下:**
* play() - 开始播放视频或音频
* pause() - 暂停当前播放的视频或音频
* load() - 重新加载视频或音频元素
* canPlayType() - 检查浏览器是否能够播放指定的视频或音频类型
* addTextTrack() - 向视频或音频添加新的的文本轨道

## 案例:自定义视频播放器
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>自定义视频播放器</title>
</head>
<body>

<video id="my_video" poster="images/iceage3.jpg">
	<source src="video/iceage4.mp4" type="video/mp4">
	<source src="video/iceage4.webm" type="video/webm">
	<source src="video/iceage4.ogv" type="video/ogg">
	你的浏览器不支持video标签
</video>

<div>
	<button>开始播放</button>
	<button>静音</button>
	<input id="mRange" type="range" value="0" max="100">
	<input id="mInfo" type="text" disabled>
</div>

<script>
	var mVideo = document.getElementById("my_video");
	var mPlayer = document.getElementsByTagName("button")[0];
	var mVoice = document.getElementsByTagName("button")[1];
	var mRange = document.getElementById("mRange");
	var mInfo = document.getElementById("mInfo");	

	mPlayer.onclick = function() {
		if(mVideo.paused == true) {
			mVideo.play();
			mPlayer.innerHTML = "暂停播放";
		} else {
			mVideo.pause();
			mPlayer.innerHTML = "开始播放";
		}
	};

	mVoice.onclick = function() {
		if(mVideo.muted == true) {
			mVideo.muted = false;
			mVoice.innerHTML = "取消静音";
		} else {
			mVideo.muted = true;
			mVoice.innerHTML = "开启静音";
		}
	};

	// 视频播放时，滚动条同步 当前时间 / 总时间 显示
	mVideo.ontimeupdate = function() {
		var currentTime = parseInt(mVideo.currentTime);
		var totalTime = parseInt(mVideo.duration);
		mInfo.value = currentTime + " / " + totalTime;
		mRange.value = (currentTime / totalTime) * parseInt(mRange.max);
	};

	// 拖动滚动条时视频进度同步
	mRange.onmousedown = function() {
		mVideo.pause();
	};

	mRange.onmouseup = function() {
		mVideo.currentTime = mVideo.duration * (mRange.value / mRange.max);
		mVideo.play();
	};

</script>
</body>
</html>
```

# 本地存储
在HTML4中，当客户端需要存储少量数据时，只能通过cookie技术来实现。但cookie有一些限制，
并且原声JavaScript操作cookie的接口也很渣。
在HTML5中，客户端提供了两个新的存储数据的对象：
* localStorage - 没有时间限制的存储数据
* sessionStorage - 直到浏览器窗口关闭前都存储数据

> 同cookie一样，这两种存储技术是不能跨域的。

## API
不管是localStorage还是sessionStorage，提供的API基本相同，常用的有如下几个：
* 保存数据 - localStorage.setItem(key, value);
* 读取数据 - localStorage.getItem(key);
* 删除单个数据 - localStorage.removeItem(key);
* 删除所有数据 - localStorage.clear();
* 返回键值对数量 - localStorage.length
* 获取键 - localStorage.key(i); 

> key / value 通常是按照字符串存储, i从零开始取值

## 基础案例
> 最好在服务器环境下，运行案例代码
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<body>
<script>
function p(x) {return console.log(x)}

localStorage.clear(); // 清除当前页面所有 Local Storage

localStorage.setItem("ZUK Z2", "1399"); // 写入
localStorage.setItem("ZUK Z1", "999");

p(localStorage.getItem("ZUK Z2")); // 读取
p(localStorage.getItem("ZUK Z1"));

p(localStorage); // 打印localStorage对象

localStorage.removeItem("ZUK Z2"); //  删除单个数据
p(localStorage);
</script>
</body>
</html>
```

## 综合案例
**案例1：sessionStorage实现商品录入**
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>sessionStorage实现商品录入</title>
</head>
<body>
	<form>
		<label>商品名称</label>
		<input type="text" id="goodsName">
		<input type="button" value="录入" id="addGoods">
	</form>

	<table border="1" id="goodsList">
		<tr><th>商品名称</th></tr>
	</table>

<script>
function p(x) {return console.log(x)}
var goodsName = document.getElementById("goodsName");
var addGoods = document.getElementById("addGoods");
var goodsList = document.getElementById("goodsList");

// 把商品编号保存在goodsNum里，这样浏览器刷新商品编号也不会丢失
if(sessionStorage.getItem("goodsNum") == null) {
	sessionStorage.setItem("goodsNum", "1");	
}

addGoods.onclick = function() {
	if(goodsName.value == '') {
		alert("商品名称不能为空的");
		return;
	}

	// 保存到sessionStorage里
	sessionStorage.setItem(sessionStorage.getItem("goodsNum"), goodsName.value);
	
	// 创建td元素，并添加到table元素中
	var tr = document.createElement("tr");
	var td = document.createElement("td");
	td.innerHTML = sessionStorage.getItem(sessionStorage.getItem("goodsNum"));
	tr.appendChild(td);
	goodsList.appendChild(tr);
	sessionStorage.setItem("goodsNum", parseInt(sessionStorage.getItem("goodsNum")) + 1);
};
</script>
</body>
</html>
```

**案例2：localStorage实现购物车**
```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>购物车</title>
</head>
<body>

<div id="inputDiv">
	<label>商品名称：</label><input type="text" id="goodsName"><br>
	<label>商品数量：</label><input type="text" id="goodsNum"><br>
	<label>商品价格：</label><input type="text" id="goodsPrice"><br><br>
	<input type="button" id="inputCart" value="录入购物车">
	<input type="button" id="showCart" value="显示购物车">
	<input type="button" id="clearCart" value="清空购物车"><br><br>
</div>

<div id="resultDiv">
	<table border="1" id="resultTable">
		<tr>
			<th>商品名称</th>
			<th>商品价格</th>
			<th>数量</th>
		</tr>
	</table>
</div>

<script>
function p(x) {return console.log(x)}

// setInterval(loadCart, 1000);

var inputCart = document.getElementById("inputCart");
var showCart = document.getElementById("showCart");
var clearCart = document.getElementById("clearCart");

// 录入购物车
inputCart.onclick = function() {
	// 省略字段为空时的判断

	var goodsName = document.getElementById("goodsName");
	var goodsNum = document.getElementById("goodsNum");
	var goodsPrice = document.getElementById("goodsPrice");
	var time = new Date().getTime(); // 以当前时间作为key

	var msg = {
		name: goodsName.value,
		num: goodsNum.value,
		price: goodsPrice.value
	};
	
	localStorage.setItem(time, JSON.stringify(msg));
	loadCart;
};

// 显示购物车中额商品
function loadCart() {
	var resultTable = document.getElementById("resultTable");
	// location.reload(true);
	for(var i=0; i<localStorage.length; i++) {
		var key = localStorage.key(i);
		var msg = JSON.parse(localStorage.getItem(key));
		var row = document.createElement("tr");
		row.innerHTML = "<td>" + msg.name + "</td>" +
						"<td>" + msg.num + "</td>" + 
						"<td>" + msg.price + "</td>";
		resultTable.appendChild(row);
	}
}

showCart.onclick = loadCart;

// 清空购物车
clearCart.onclick = function() {
	localStorage.clear();
	loadCart();
};

</script>
</body>
</html>
```