enum PhoneNumberError: Error {
  case invalidPhoneNumber
}

class PhoneNumber {
  let number: String
  init(_ number: String) {
    self.number = number
  }

  func clean() throws -> String {
    var cleaned: [Int] = []

  

    for char in number {
      if let digit = Int(String(char)) {
        cleaned.append(digit)
      } else if char != " " && char != "-" && char != "." && char != "(" && char != ")" && char != "+" {
        throw PhoneNumberError.invalidPhoneNumber
      }
    }

    if cleaned.count == 11 && cleaned[0] == 1 {
      cleaned.removeFirst()
    } 

    if cleaned.count != 10 {
      throw PhoneNumberError.invalidPhoneNumber
    }

    if cleaned[0] < 2 || cleaned[3] < 2 {
      throw PhoneNumberError.invalidPhoneNumber
    }

    return cleaned.map(String.init).joined()
  }
}
