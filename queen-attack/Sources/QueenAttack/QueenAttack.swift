enum QueenError: Error {
  case inValidRow
  case inValidColumn
}

class Queen {
  let row: Int
  let column: Int

  init(row: Int, column: Int) throws {
    if row < 0 || row > 7  {
      throw QueenError.inValidRow
    }
    if column < 0 || column > 7 {
      throw QueenError.inValidColumn
    }
    self.row = row
    self.column = column
  }

  func canAttack(other: Queen) -> Bool {
    if row == other.row || column == other.column {
      return true
    }
    if abs(row - other.row) == abs(column - other.column) {
      return true
    }
    return false
  }
}
