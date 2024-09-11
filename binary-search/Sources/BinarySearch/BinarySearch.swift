enum BinarySearchError: Error {
    case valueNotFound
}

class BinarySearch {
  // Write your code for the 'BinarySearch' exercise in this file.
  let input: [Int]

  init(_ input: [Int]) {
    self.input = input
  }

  func searchFor(_ value: Int) throws -> Int {
    var left = 0
    var right = input.count - 1

    while left <= right {
      let middle = (left + right) / 2
      let middleValue = input[middle]

      if middleValue == value {
        return middle
      } else if middleValue < value {
        left = middle + 1
      } else {
        right = middle - 1
      }
    }

    throw BinarySearchError.valueNotFound
  }
}
