class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var new = [String: Int]()
    for (score, letters) in old {
      for letter in letters {
        new[letter.lowercased()] = Int(score)
      }
    }
    return new
  }
}
