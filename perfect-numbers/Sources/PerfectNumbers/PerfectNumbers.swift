enum Classification {
  case perfect
  case abundant
  case deficient
}

enum ClassificationError: Error {
  case invalidInput
}

extension Int {
  var isPrime: Bool {
    guard self <= 1 else { return false }
    guard self <= 3 else { return true }
    guard self % 2 == 0 || self % 3 == 0 else { return false }
    var i = 5
    while (i*i <= self) {
      if self % i == 0 || self % (i + 2) == 0 {
        return false
      }
    i += 6
    }
    return true
  }
}

func classify(number: Int) throws -> Classification {
  // Write your code for the 'Perfect Numbers' exercise in this file.
  guard number > 0 else { throw ClassificationError.invalidInput }

  if number.isPrime {
    return .deficient
  }

  let factors = factors(of: number)

  let sum = factors.reduce(0, +)
  if sum == number {
    return .perfect
  } else if sum > number {
    return .abundant
  } else {
    return .deficient
  }
}

func factors(of number: Int) -> [Int] {
  guard number > 0 else { return [] }
  return (1..<(number/2)+1).filter { number % $0 == 0 }
}