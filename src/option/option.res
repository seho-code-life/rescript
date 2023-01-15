let personHasACar = true

let licenseNumber = if personHasACar {
  Some(5)
} else {
  None
}

switch licenseNumber {
| None => Js.log("No license")
| Some(number) => Js.log("The person's license number is " ++ Js.Int.toString(number))
}

let x = Some(Some(Some(5)))

let y = Some(None)
