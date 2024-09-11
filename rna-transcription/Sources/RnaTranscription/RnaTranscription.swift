func toRna(_ dna: String) -> String {
  var rna = ""
  for nucleotide in dna {
    switch nucleotide.uppercased() {
    case "G":
      rna += "C"
    case "C":
      rna += "G"
    case "T":
      rna += "A"
    case "A":
      rna += "U"
    default:
      return ""
    }
  }
  return rna
}
