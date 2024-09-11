let Action: [Int: String] = [
  1 << 0: "wink",
  1 << 1: "double blink",
  1 << 2: "close your eyes",
  1 << 3: "jump",
]

func commands(number: Int) -> [String] {
  // Write your code for the 'Secret Handshake' exercise in this file.
  var result: [String] = []
 
  if (number & 1 << 0) == (1 << 0) {
    result.append("wink")
  }

  if (number & 1 << 1) == (1 << 1) {
    result.append("double blink")
  }

  if (number & 1 << 2) == (1 << 2) {
    result.append("close your eyes")
  }

  if (number & 1 << 3) == (1 << 3) {
    result.append("jump")
  }

  if (number & 1 << 4) == (1 << 4) {
    result.reverse()
  }

  return result
}
