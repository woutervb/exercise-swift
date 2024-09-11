let flip: ((String, String, String)) -> (String, String, String) = { abc in
  let (a, b, c) = abc
  return (b, a, c)
}

let rotate: ((String, String, String)) -> (String, String, String) = { abc in
  let (a, b, c) = abc
  return (b, c, a)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  func shuffleFunction(n: UInt8, abc: (String, String, String)) -> (String, String, String) {
    var result = abc
    var bits = n
    for _ in 0...7 {
      if bits & 1 == 0 {
        result = flipper(result)
      } else {
        result = rotator(result)
      }
      bits >>= 1
    }
    return result
  }
  return shuffleFunction
}
