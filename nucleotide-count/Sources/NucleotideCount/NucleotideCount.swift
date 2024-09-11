import Foundation

enum NucleotideCountErrors: Error {
  case invalidNucleotide
}

class DNA {
  // Write your code for the 'NucleotideCount' exercise in this file.
  let strand: String

  init (strand: String) throws {
    // Check that only letters A, C, G, and T are present
    if strand.rangeOfCharacter(from: CharacterSet(charactersIn: "ACGT").inverted) != nil {
      throw NucleotideCountErrors.invalidNucleotide
    }
    self.strand = strand
  }

  func counts() -> [String: Int] {
    var result: [String: Int] = ["A": 0, "C": 0, "G": 0, "T": 0]
    for nucleotide in ["A", "C", "G", "T"] {
      result[nucleotide] = strand.filter { $0 == Character(nucleotide) }.count
    }
    return result
  }
}
