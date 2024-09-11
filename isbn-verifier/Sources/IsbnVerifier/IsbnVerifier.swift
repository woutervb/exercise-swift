class IsbnVerifier {
  static func isValid(_ string: String) -> Bool {
    var digits: [Int] = []

    for (index,char) in string.enumerated() {
      if char.isNumber {
        digits.append(Int(String(char))!)
      } else if char == "X"  && index == string.count - 1 {
        digits.append(10)
      } else if char != "-" {
        return false
      }
    }

    if digits.count != 10 {
      return false
    }

    for i in 0..<9 {
      digits[i] *= 10 - i
    }

    return digits.reduce(0, +) % 11 == 0
  }
}
