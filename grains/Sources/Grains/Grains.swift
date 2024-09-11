import Foundation

enum GrainsError: Error {
  case inputTooLow
  case inputTooHigh
}

struct Grains {
  static func square(_ num: Int) throws -> UInt64 {

    if num < 1 { throw GrainsError.inputTooLow }
    if num > 64 { throw GrainsError.inputTooHigh }

    var squareValue: [UInt64] = []
    for i in 0..<num {
      if i == 0 { squareValue.append(1) } else { squareValue.append(squareValue[i-1] * 2)}
    }
    return squareValue.last!
  }

  static var total: UInt64 {
    return (1...64).map { try! square($0) }.reduce(0, +)
  }
  
}
