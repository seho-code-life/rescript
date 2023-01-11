type myResponse =
  | Yes
  | No
  | PrettyMuch

let areYouCrushingIt = No

type account =
  | None
  | Instagram(string)
  | Facebook(string, int)

let myAccount = Facebook("Josh", 26)
let friendAccount = Instagram("Jenny")

type u = {name: string, password: string}

type user =
  | Number(int)
  | Id(u)

let me = Id({name: "Joe", password: "123"})