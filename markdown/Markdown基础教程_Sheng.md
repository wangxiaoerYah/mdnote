# Markdown基础教程_sheng
## 目录
在Typora里面输入`[TOC]`就会自动生成目录。目录内容会自动更新。
[TOC]

## 标题

```markdown
# This is an <h1> tag
## This is an <h2> tag
###### This is an <h6> tag
```
## 粗体与斜体
**2个星号**
*1个星号*

## 列表
###无序列表
```markdown
* Item 1
* Item 2
	* Item 2a
	* Item 2b
```
### 有序列表
```markdown
1. Item 1
2. Item 2
3. Item 3
	*Item 3a
	*Item 3b
```
## 图片
![GitHub Logo](http://img95.699pic.com/photo/00037/9614.jpg_wh300.jpg)

## 链接
[百度](http://www.baidu.com)

## 引用
> 这段话引用自wiki百科
> 这段话引用自百度百科

## 代码 
（接下来的语法相当一部分为GFM专有）
### 行内代码
`code`

### 代码块
原版方法：首行缩进4个空格。

GFM方法：
```javascript
function test() {
  console.log("这种代码快的方式为GFM(GitHub Flavored Markdown)专用");
}
```
## 任务列表
- [x] 这是一个已经完成的任务
- [ ] 这是一个没有完成的任务

## 表格
|     First Header |  Second Header   |
| ---------------: | :--------------: |
|   Content cell 1 |  Content column 1|
| Content column 1 | Content column 2 |

## 最后
本文完成与2016年12月25日。
本文使用的markdown编辑器是：[Typora](http://www.typora.io/)。

参考链接：https://guides.github.com/features/mastering-markdown/

