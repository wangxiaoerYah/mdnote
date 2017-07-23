# 01 JavaScript编码规范
本文根据《编写可维护的JavaScript》一书，指定一些适合自己的编码规范。

# 02 基本的格式化

##  2.1 缩进
缩进为4个空格。一般编辑器制表符的默认展现长度为4个字符。可以通过编辑
器相关配置修改其展现长度，也可以配置制表符展现为指定的个数的空格。

## 2.2 语句结尾
推荐不要省略，语句结尾的分号。

## 2.3 行的长度
建议不要超过80个字符，1个汉字代表两个字符。

## 2.4 换行
当一行长度达到了单行最大字符数限制时，就需要手动将一行拆成两行，通常会在运算符
后换行，下一行增加两个字符的缩进。
```javascript
// 在运算符后换行，第2行增加两个缩进
callFunction(document, element, window, "some string value", true, 123,
		navigator);
```

## 2.5 命名
JavaScript语言的核心ECMAScript，遵照了小驼峰式的命名规范。

### 2.5.1 变量和函数
遵循小驼峰命名法。示例如下：
```javascript
var count = 10;
var myName = "sheng";

function getName() {
	return myName;
}
```

### 2.5.2 常量
使用大写字母加下划线来命名。
```javascript
var MAX_COUNT = 10;
var URL = "http://www.qq.com";
```

### 2.5.3 构造函数
使用大驼峰法来命名构造函数。
```javascript
function Person(name) {
	this.name = name;
}

Person.prototype.sayName = function() {
	console.log(this.name);
};

var me = new Person("lang_shi");
```

# 03 注释

## 3.1 单行注释
`// 这是一个单行注释`
单行注释一般有2种用法：
1. 	独占一行的注释，用来解释下一行代码。这行注释之前总是有一个空行，且缩进层级和下一行
	代码保持一致。
2.	在代码尾部注释

## 3.2 多行注释
多行注释用来解释接下来的代码，注意缩进保持一致。

# 04 语句和表达式
```javascript
if (condition) {
	doSomething();
}
```
* 任何时候不要省略大括号