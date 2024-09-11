import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter = diameter,
          let slices = slices,
          diameter >= .zero,
          slices > .zero
    else {
        return nil
    }
    let radius = diameter / 2
    return Double.pi * pow(radius, 2) / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let sliceA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let sliceB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

    guard sliceA != sliceB else { return "Neither slice is bigger" }
    guard let sliceA = sliceA else { return "Slice B is bigger" }
    guard let sliceB = sliceB else { return "Slice A is bigger" }
    return sliceA > sliceB ? "Slice A is bigger" : "Slice B is bigger"
}
