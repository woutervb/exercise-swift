func newScoreBoard() -> [String: Int] {
  [String: Int]()
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  guard scores.removeValue(forKey: name) != nil else {
    return
  }
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  guard scores[name] != nil else {
    return
  }
  scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  guard scores[name] != nil else {
    addPlayer(&scores, name, delta)
    return
  }

  scores[name]! += delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  scores.sorted { $0.key < $1.key }
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  scores.sorted { $0.value > $1.value }
}
