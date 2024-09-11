enum TranslationError: Error {
  case invalidCodon
}

func translationOfRNA(rna strand: String) throws -> [String] {
  var proteins = [String]()

  // iterate of the strand in steps of 3 characters
  for i in stride(from: 0, to: strand.count, by: 3) {
    let startIndex = strand.index(strand.startIndex, offsetBy: i)
    let endIndex = strand.index(startIndex, offsetBy: 3, limitedBy: strand.endIndex) ?? strand.endIndex
    let nextCodon = strand[startIndex..<endIndex]
    switch nextCodon {
      case "AUG": proteins.append("Methionine")
      case "UUU", "UUC": proteins.append("Phenylalanine")
      case "UUA", "UUG": proteins.append("Leucine")
      case "UCU", "UCC", "UCA", "UCG": proteins.append("Serine")
      case "UAU", "UAC": proteins.append("Tyrosine")
      case "UGU", "UGC": proteins.append("Cysteine")
      case "UGG": proteins.append("Tryptophan")
      case "UAA", "UAG", "UGA": return proteins
      default: throw TranslationError.invalidCodon
    }
  }
  return proteins
}
