extension Array {
  func keep(_ predicate: (Element) -> Bool) -> [Element] {
    var result: [Element] = []
    for element in self {
      if predicate(element) {
        result.append(element)
      }
    }
    return result
  }

func discard(_ predicate: (Element) -> Bool) -> [Element] {
    var result: [Element] = []
    for element in self {
      if !predicate(element) {
        result.append(element)
      }
    }
    return result
  }
}

