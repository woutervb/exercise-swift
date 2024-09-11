func isIsogram(_ string: String) -> Bool {
  return string.lowercased().filter { $0.isLetter }.count == Set(string.lowercased().filter { $0.isLetter }).count
}
