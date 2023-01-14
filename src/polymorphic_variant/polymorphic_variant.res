let myColor = #red

type color = [#red | #green | #blue]

let render = (myColor: [#red | #green | #blue]) => {
  switch myColor {
  | #blue => Js.log("Hello blue!")
  | #red
  | #green => Js.log("Hello other colors")
  }
}

// 多态变体是可以被推断出来的, 并不是靠作用域搜索的, 所以下面的代码也是有效的

let render1 = myColor => {
  switch myColor {
  | #blue => Js.log("Hello blue!")
  | #green => Js.log("Hello green!")
  // works!
  | #yellow => Js.log("Hello yellow!")
  }
}

// 构造器参数, 和普通的变体是一样的
type account = [
  | #Anonymous
  | #Instagram(string)
  | #Facebook(string, int)
]

let me: account = #Instagram("Jenny")
let him: account = #Facebook("Josh", 26)

// 同样的, 你可以用其他类型构造多态变体

type red = [#Ruby | #Redwood | #Rust]
type blue = [#Sapphire | #Neon | #Navy]

// Contains all constructors of red and blue.
// Also adds #Papayawhip
type color1 = [red | blue | #Papayawhip]

let myColor: color1 = #Ruby

// 那么对于这种混合的多态变体, 模式匹配得要使用稍微复杂一点的, 也就是类似于的展开运算符

switch myColor {
| #...blue => Js.log("This blue-ish")
| #...red => Js.log("This red-ish")
| other => Js.log2("Other color than red and blue: ", other)
}

// 当然你可以全部展开进行模式匹配
switch myColor {
| #Sapphire | #Neon | #Navy => Js.log("This is blue-ish")
| #Ruby | #Redwood | #Rust => Js.log("This is red-ish")
| other => Js.log2("Other color than red and blue: ", other)
}

// 多态变体由于编译出的代码和js风格一致, 所以非常适合和js进行互操作

// 多态还可以表达非封闭的类型定义, 比如我至少要..., 我最多要...

// Only #Red allowed. Closed.
let basic: [#Red] = #Red

// May contain #Red, or any other value. Open
// here, foreground will actually be inferred as [> #Red | #Green]
let foreground: [> #Red] = #Green

// The value must be, at most, one of #Red or #Blue
// Only #Red and #Blue are valid values
let background: [< #Red | #Blue] = #Red

// 强制类型转换
type company = [#Apple | #Facebook]
let theCompany: company = #Apple

let message = "Hello " ++ (theCompany :> string)
