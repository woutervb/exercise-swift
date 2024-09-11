class Triangle {
  var a: Double
  var b: Double
  var c: Double

  init(_ sides: [Int]) {
    (a,b,c) = (Double(sides[0]), Double(sides[1]), Double(sides[2]))
  }

  init(_ sides: [Double]) {
    (a,b,c) = (sides[0], sides[1], sides[2])
  }

  var isEquilateral: Bool { 
    isValid && (a == b) && (a == c) && (b == c)
  }

  var isIsosceles: Bool {
    isValid && (
    (a == b) ||
    (a == c) ||
    (b == c) )
  }

  var isScalene: Bool {
    isValid && a != b && a != c && b != c
  }

  var isValid: Bool {
    a + b >= c &&
    b + c >= a &&
    a + c >= b &&
    a > 0 &&
    b > 0 &&
    c > 0
  }

}
