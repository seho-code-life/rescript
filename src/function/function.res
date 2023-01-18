let greet = (name) => "Hello " ++ name

let greetMore = (name) => {
  let part1 = "Hello"
  part1 ++ " " ++ name
}

let addCoordinates = (~x, ~y) => x + y

let a = addCoordinates(~x=1, ~y=2)

let drawCircle = (~color, ~radius=?, ()) => {
  switch radius {
  | None => Js.log(1)
  | Some(r_) => Js.log(2)
  }
}

let drawCircle1 = (~radius=1, ~color, ()) => {
 Js.log(1)
}

let rec callSecond = () => callFirst()
and callFirst = () => callSecond()

// 柯理化
let add = (. x, y) => x + y

let b = add(. 1, 2)

// let getUserName = async (userId) => userId

// let greetUser = async (userId) => {
//   let name = await getUserName(userId)
//   "Hello " ++ name ++ "!"
// }