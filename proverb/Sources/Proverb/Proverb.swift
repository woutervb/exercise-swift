class Proverb {
  let pieces: [String]
  init(_ pieces: [String]) {
    self.pieces = pieces
  }

  func recite() -> String {
    guard !pieces.isEmpty else { return "" }
    return pieces.enumerated().map { (index, piece) in
      guard index < pieces.count - 1 else { return "And all for the want of a \(pieces[0])." }
      return "For want of a \(piece) the \(pieces[index + 1]) was lost."
    }.joined(separator: "\n")
  }
}
