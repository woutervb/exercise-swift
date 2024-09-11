func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    var list = [Int]()
    for multiple in inMultiples {
      if multiple == 0 {
        continue
      }
      for i in stride(from: multiple, to: limit, by: multiple) {
        list.append(i)
      }
    }
  return Array(Set(list)).reduce(0, +)
}
