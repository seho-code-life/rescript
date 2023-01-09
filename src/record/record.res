type person = {
  mutable age: int,
  name?: string,
}

let me = {
  age: 5,
  name: "Big ReScript",
}

let name = me.name
let meNextYear = {...me, age: me.age + 1}
me.age = 18

let withoutName = {
  ...me,
  name: ?None
}

let someName = Some("Big ReScript")

let optionName = {
    ...me,
    name: ?someName
}

// 对record类型进行模式匹配
let isRescript = switch me.name {
| Some("ReScript") => true
| Some(_) | None => false
}

let nameWasSet = switch me {
| {name: ?None} => false
| {name: ?Some(_)} => true
}