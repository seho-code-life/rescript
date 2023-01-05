let a = "1"
Js.log(a)

let hello = "hello"
let world = "world"
let message = hello ++ world

let area = {
    let width = 10;
    let height = 20;
    width * height
}

Js.log2("area:", area)

// add函数
let add = (a, b) => a + b

// 绑定覆盖

let result = 0
let result = add(result, 1)
let result = add(result, 1)

module A: {
  let b: int
} = {
  let a = 3
  let b = 4
}

module B = {
  %%private(let a = 3)
  let b = 4
}