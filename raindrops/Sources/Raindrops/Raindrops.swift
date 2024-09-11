func raindrops(_ number: Int) -> String {
  var result = ""
  // Write your code for the 'Raindrops' exercise in this file.
  if number % 3 == 0 {
    result += "Pling"
  }
  if number % 5 == 0 {
    result += "Plang"
  }
  if number % 7 == 0 {
    result += "Plong"
  }
  if result.isEmpty {
    return String(number)
  }
  return result
}
