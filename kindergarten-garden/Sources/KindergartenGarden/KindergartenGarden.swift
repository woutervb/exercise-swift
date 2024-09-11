enum Plant: Character {
  case clover = "C"
  case grass = "G"
  case radishes = "R"
  case violets = "V"
}

let Child = [
   "alice": 0,
   "bob": 1,
   "charlie": 2,
   "david": 3,
   "eve": 4,
   "fred": 5,
   "ginny": 6,
   "harriet": 7,
   "ileana": 8,
   "joseph": 9,
   "kincaid": 10,
   "larry": 11,
]

class Garden {
  let firstRow: [Character]
  let secondRow: [Character]
  init(_ graden: String) {
    let rows = graden.split(separator: "\n")
    firstRow = Array(rows[0])
    secondRow = Array(rows[1])
  }

  func plantsForChild(_ child: String) -> [Plant] {
    let childIndex = Child[child.lowercased()]!
    let plants = [firstRow[childIndex * 2], firstRow[childIndex * 2 + 1], secondRow[childIndex * 2], secondRow[childIndex * 2 + 1]]
    return plants.map { Plant(rawValue: $0)! }
  }

}
