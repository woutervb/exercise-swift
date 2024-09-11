func sieve(limit: Int) -> [Int] {
  guard limit > 1 else { return [] }

  var marks = [Bool](repeating: true, count: limit + 1)
  marks[0] = false
  marks[1] = false

  for counter in 2...limit {
    if marks[counter] {
      var index = counter * 2
      while index <= limit {
        marks[index] = false
        index += counter
      }
    } 
  }

  var result: [Int] = []
  for (index, element) in marks.enumerated() {
    if element {
      result.append(index)
    }
  }

  return result
}
