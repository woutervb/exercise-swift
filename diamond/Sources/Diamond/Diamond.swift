class Diamond {
  static func makeDiamond(letter: Character) -> [String] {
    var result: [String] = []
    let sideLength = Int(letter.asciiValue! - Character("A").asciiValue!) * 2 + 1
    let middle = sideLength / 2
    for i in 0..<middle {
      var line = ""
      let lineLetter = Character(UnicodeScalar(UInt8(i) + Character("A").asciiValue!))  
      for j in 0..<sideLength {
        if j == middle - i || j == middle + i {
          line.append(lineLetter)
        } else {
          line.append(" ")
        }
      }
      result.append(line)
    }

    for i in stride(from: middle, through: 0, by: -1) {
      var line = ""
      let lineLetter = Character(UnicodeScalar(UInt8(i) + Character("A").asciiValue!))  
      for j in 0..<sideLength {
        if j == middle - i || j == middle + i {
          line.append(lineLetter)
        } else {
          line.append(" ")
        }
      }
      result.append(line)
    }

    return result
  }
}
