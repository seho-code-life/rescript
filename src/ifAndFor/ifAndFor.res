let isMorning = true

let message = if isMorning {
  "Good morning!"
} else {
  "Hello!"
}

for x in 1 to 3 {
  Js.log(x)
}

let break = ref(false)

while !break.contents {
  if Js.Math.random() > 0.3 {
    break := true
  } else {
    Js.log("Still running")
  }
}