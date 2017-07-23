# JSON
JavaScript Object Notation 是一种表示结构化数据的格式，是JavaScript的一个严格子集，
利用了JavaScript中的一些模式来表示结构化的数据。
JSON的语法可以表示三种类型的值：简单值、对象、数组。

## 用JSON表示对象
JSON中对象的属性必须加**双引号**，使用单引号或不加引号都是错误的。
```json
// JavaScript中的对象
var person = {
	name: "Nicholas",
	age: 29
};

// JSON中的对象
{
	"name": "Nicholas",
	"age": 29
}

{
	"name": "Nicholas",
	"age": 29,
	"school": {
		"name": "Merrimack College",
		"location": "North Andover, MA"
	}
}
``` 

## 用JSON表示数组
```json
[
	{
		"title": "Professional JavaScript",
		"authors": [
		"Nicholas C. Zakas"
		],
		edition: 3,
		year: 2011
	},

	{
		"title": "Professional JavaScript",
		"authors": [
		"Nicholas C. Zakas"
		],
		edition: 2,
		year: 2009
	},

	{
		"title": "Professional Ajax",
		"authors": [
			"Nicholas C. Zakas",
			"Jeremy McPeak",
			"Joe Fawcett"
		],
		edition: 2,
		year: 2008
	}
]
```

## 解析与序列化
JSON字符串与JavaScript对象互相转化。使用`JSON.stringify()`和`JSON.parse()`

```javascript
// 1. 对象序列化为JSON字符串
var book = {
	title: "Professional JavaScript",
	authors: [
		"Nicholas C. Zakas",
		"sheng",
		"xing"
	],
	edition: 3,
	year: 2011
};
var jsonText = JSON.stringify(book);
console.log(jsonText); // 输出如下
/* 
"{	
	"title":"Professional JavaScript",
	"authors":["Nicholas C. Zakas"],
	"edition":3,
	"year":2011
}"
*/

// 2. JSON字符串解析为对象
var bookCopy = JSON.parse(jsonText);
console.log(bookCopy.authors[1]);
```
