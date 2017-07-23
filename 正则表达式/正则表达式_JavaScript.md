# JavaScript 正则表达式

## 概述
正则表达式是被用来匹配字符串中的字符组合的模式。在JavaScript中，正则表达式也是**对象**。这种模式可以被用于 RegExp 的 exec 和 test 方法以及 String 的 match、replace、search 和 split 方法。本文介绍的是 Javascript 的正则表达式。

## 创建正则表达式
### 语法

	var patt=/pattern/flags;

### 例子
对象字面量的方法
​	
	var re = /abc/i;

调用RegExp对象的构造函数
​	
	var re = new RegExp("ab+c");

## 正则表达式的模式
### 简单模式
最简单直接的模式，比如`/hel/`匹配字符串"hello world""就会匹配成功。

### 特殊字符

| 字符     | 含义                                      |
| :----- | :-------------------------------------- |
| \      | 转义字符                                    |
| ^      | 匹配输入的开始                                 |
| $      | 匹配输入的结束                                 |
| *      | 匹配前一个表达式0次，或者多次。等价于{0, }                |
| +      | 匹配前一个表达式1次，或者多次。等价于{1, }                |
| ?      | 匹配前一个表达式0次或者1次。等价于{0, 1}                |
| .      | （小数点）匹配除了换行符（\n）之外的任何单个字符。              |
| (x)    | 匹配 'x' 并且记住匹配项。使用`$1、$2`可以拿到括号中的内容。     |
| `x|y`   | 匹配x或者y                                       |
| {n}    | n是一个正整数，匹配了前面一个字符刚好发生了n次。               |
| {n, m} | n 和 m 都是正整数。匹配前面的字符至少n次，最多m次。           |
| [xyz]  | 一个字符集合。匹配方括号的中任意字符。可以使用破折号（-）来指定一个字符范围。 |
| [^xyz] | 一个反向字符集。也就是说， 它匹配任何没有包含在方括号中的字符。        |
| \b     | 匹配一个词的边界。（匹配一个单个的单词）                    |
| \d     | 匹配一个数字。等价于[0-9]                         |
| \D     | 匹配一个非数字。等价于[^0-9]                       |
| \n     | 匹配一个换行符。                                |
| \s     | 匹配一个空白字符，包括空格、制表符、换页符和换行符。              |
| \S     | 匹配一个非空白字符。                              |
| \w     | 匹配一个单字字符（字母、数字或者下划线）。等价于[A-Za-z0-9_]。   |
| \W     | 匹配一个非单字字符。                              |

## 使用正则表达式
正则表达式可以被用于RegExp的exec和test方法以及String的match、replace、search和split方法。
它们具体使用方法可以在MDN JavaScript手册中找到。在这里只介绍test方法和match方法的使用。

### RegExp.prototype.test()
**概述**
test() 方法执行一个检索，用来查看正则表达式与指定的字符串是否匹配。返回 true 或 false。
**语法**
	regexObj.test(str)
**示例**
	/hel/.test("hello world");
**参考链接**
https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/RegExp/test

### String.prototype.match()
**概述**
当匹配到正则表达式内容时，match方法会提取匹配项，并返回一个数组。否则返回null。
**语法**

	str.match(regexp);

**示例**
```javascript
	var str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	var regexp = /[A-E]/gi;
	var matches_array = str.match(regexp);

	console.log(matches_array); 
	// ['A', 'B', 'C', 'D', 'E', 'a', 'b', 'c', 'd', 'e']
```
**参考链接**
https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/String/match

### 使用括号的子字符串匹配
在正则表达式的模式中使用括号，可以把括号里面的内容"记住"。在脚本中可以按顺序依次使用`$1、$2`表示
第一个和第二个括号里面的内容。下面的例子说明了如何使用括号的子字符串匹配。
``` javascript
	var re = /(\w+)\s(\w+)/;
	var str = "Hello World";
	var newstr = str.replace(re, "$2AND$1");
	console.log(newstr); // → WorldANDHello
```

### 通过标志进行高级搜索
正则表达式一共有4个标志。这里只介绍最常用最主要的两个`g`和`i`。分别表示**全局**搜索和**不区分大小写**搜索。
默认的搜索是区分大小写的。下面的例子展示了标志的使用方法。
```javascript
	var str = "I am a boy. She is a girl";
	/A/.test(str); // → false
	/a/i.test(str); // → true
	
	str.match(/a/); // → ["a"]
	str.match(/a/g); // → ["a", "a", "a"]
	
```

## 常用正则表达式
1. 中文字符 `[\u4e00-\u9fa5]`
2. Email地址 `\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}`
3. 手机 `[0-9]{11}`

## 参考资料
1. [mdn Regular Expressions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions)
2. [图形化JS正则表达式工具](http://regexper.com)（需梯子）
3. [站长之家->正则测试](http://tool.chinaz.com/regex/)