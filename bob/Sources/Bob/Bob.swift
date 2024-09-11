import Foundation

class Bob {
  static func response(_ message: String) -> String {
    if message == message.uppercased() && message.contains(where: \.isLetter) {
      if message.last == "?" {
        return "Calm down, I know what I'm doing!"
      } else {
        return "Whoa, chill out!"
      }
    }
    if message.trimmingCharacters(in: .whitespaces).last == "?" {
      return "Sure."
    }

    if message.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
      return "Fine. Be that way!"
    }

    return "Whatever."
  }

}
