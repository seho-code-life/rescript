let score = 10
let add = (a, b) => a + b

// 标注参数
let a: int = 1
let add2 = (a: int, b: int) => a + b
// 标注一个函数返回值
let add3 = (a: int, b: int): int => a + b

// 类型别名
type scoreType = int
let scoreValue : scoreType = 1

type coordinates<'a> = ('a, 'a, 'a)

let a: coordinates<int> = (10, 20, 20)
let b: coordinates<float> = (10.5, 20.5, 20.5)

// 递归类型
type rec person = {
  name: string,
  friends: array<person>
}

external convertToFloat : int => float = "%identity"
// external是res的一个概念, 在这里你可以理解为let
let age = 10
let gpa = 2.1 +. convertToFloat(age)
// 被声明过的convertToFloat处理之后, 就可以转换类型了