enum CollatzError: Error {
  case negativeNumber
}

class CollatzConjecture {
  static func steps(_ number: Int) throws -> Int? {
    guard number > 0 else {
      throw CollatzError.negativeNumber
    }
    var steps = 0
    var n = number
    while n != 1 {
      if n.isMultiple(of: 2) {
        n /= 2
      } else {
        n = 3 * n + 1
      }
      steps += 1
    }
    return steps
  }

}
