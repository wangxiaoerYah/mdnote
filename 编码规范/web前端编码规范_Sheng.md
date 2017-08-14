# 简要介绍

本文通过参考百度腾讯等前端编码规范（链接建文末），得出个人习惯的编码规范。个人编码规范采用在不影响可读性的情况下能省就省，尽量简洁，不需要就直接去掉。

**最佳原则**不管是个人编码规范还是团队编码规范，一旦规范制定完毕就应该坚持使用，保持前后规范一致。

笔记通过MarkDown写成，对应的GitHub地址为：https://github.com/xys2015/mdnote

# 命名规则

项目名称，目录名称，一律采用小写方式，以下划线分割。例如：`my_project_name`
常见命名推荐：img、js、css、src、dep

# 通用规范
* 缩进4个空格。
* 分号不能省略。
* UTF-8编码。
* 换行符使用`LF`。
* 在文件结尾处，保留一个空行。

# HTML编码规范

## 规范速览

1. 缩进使用4个空格。
2. 属性值使用双引号。
3. 属性名必须使用小写字母。
4. id、class命名全小写用中划线做分隔符。
5. 不要在自动闭合标签结尾处使用斜杠。
6. 文件编码使用UTF-8。
7. DOCTYPE这样写`<!DOCTYPE html>`。
8. charset这样写`<meta charset="UTF-8">`。
9. 引用CSS和JS时不用指明`type`属性。
10. 布尔类型的属性，建议不添加属性值。
11. JS标签引入放在`</body>`上面。
12. 同一页面，应避免使用相同的`name`与`id`。
13. 对HTML5中规定允许省略的闭合标签，不允许省略闭合标签。

> Note: 可以通过配置编辑器，使Tab键相当于4个空格

## 代码示例
```html
<!DOCTYPE html>
<html>
    <head>
        <charset="UTF-8">
        <title>Page title</title>
        <link rel="stylesheet" href="page.css">
    </head>
    <body>
        <img src="images/company_logo.png" alt="Company">
        <h1 class="hello-world">Hello, world!</h1>
        <input type="checkbox" value="1" checked>
        <script src="esl.js"></script>
    </body>
</html>
```

# CSS编码规范

## 规范速览

1. 缩进4个空格。
2. 分号不能省略。
3. UTF-8编码。
4. 使用双引号。
5. 选择器的嵌套层级应不大于3级，位置靠后的限定条件应尽可能精确。
6. 属性书写顺序：布局方式、位置，尺寸、文本相关、视觉效果。
7. 当一个`rule`包含多个`selector`时，每个选择器声明必须独占一行。
8. `url()`函数中的路径不加引号。 
9. 长度为`0`时须省略单位。
10. `font-family`属性中的字体族名称应使用字体的英文`Family Name`，其中如有空格，须放置在引号中。
11. 关于空格、缩进规范，参考下面的代码示例。

## 代码示例

```css
/* 11. 空格、换行 */
.selector {
    margin: 0;
    padding: 0;
}

font-family: Arial, sans-serif;

/* 6. 属性书写顺序 */
.sidebar {
    /* formatting model: positioning schemes / offsets / z-indexes / display / ...  */
    position: absolute;
    top: 50px;
    left: 0;
    overflow-x: hidden;

    /* box model: sizes / margins / paddings / borders / ...  */
    width: 200px;
    padding: 5px;
    border: 1px solid #ddd;

    /* typographic: font / aligns / text styles / ... */
    font-size: 14px;
    line-height: 20px;

    /* visual: colors / shadows / gradients / ... */
    background: #f5f5f5;
    color: #333;
    -webkit-transition: color 1s;
       -moz-transition: color 1s;
            transition: color 1s;
}

/* 7. 分组选择换行 */
.post,
.page,
.comment {
    line-height: 1.5;
}

/* 8.  */
body {
    background: url(bg.png);
}

/* 10. 
    宋体 SimSun 
    黑体 SimHei
    微软雅黑 Microsoft YaHei
*/
h1 {
    font-family: "Microsoft YaHei";
}

```

# JavaScript编码规范

## 规范速览

1. 缩进4个空格。
2. 分号不能省略。
3. 空格、换行（见代码示例）。
4. 优先使用单引号。
5. 变量、函数、参数命名采用驼峰法。构造函数大写第一个字母。常量全大写，下划线连接。
6. 每个`var`只能声明一个变量。
7. 函数（见代码示例）。
8. 数组、对象最后不要有逗号。

## 代码示例 
```js
// 1缩进 3空格、换行 7函数 8数组
switch (variable) {

    case '1':
        // do...
        break;

    case '2':
        // do...
        break;

    default:
        // do...

}

var a = !arr.length;
a++;
a = b + c;

if (condition) {
    // some statements;
} else {
    // some statements;
}

while (condition) {
}

function funcName() {
}

(function() {
    // do something
})();

var obj = {
    a: 1,
    b: 2,
    c: 3
};

var func = function () {
};

funcName();

callFunc(a, b);

if (user.isAuthenticated()
    && user.isInRole('admin')
    && user.hasAuthority('add-admin')
    || user.hasAuthority('delete-admin')
) {
    // Code
}

var task = (function () {
   // Code
   return result;
})();

// 4. 引号
var str = '我是一个字符串';
var html = '<div class="cls">拼接HTML可以省去双引号转义</div>';

// 5. 命名
var loadingModules = {}; // 变量
var HTML_ENTITY = {}; // 常量
function stringFormat(source) {

} // 函数

function hear(theBells) {
} // 参数

function TextNode(options) {
} // 类
```

# 参考链接

1. 百度前端编码规范：https://github.com/ecomfe/spec

2. 腾讯前端规范：http://alloyteam.github.io/CodeGuide/

3. 网易编码规范：http://nec.netease.com/