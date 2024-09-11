extension Array {
  func keep(_ predicate: (Element) -> Bool) -> [Element] {
    return self.filter(predicate)
  }

func discard(_ predicate: (Element) -> Bool) -> [Element] {
    return self.filter { !predicate($0) }
  }
}

