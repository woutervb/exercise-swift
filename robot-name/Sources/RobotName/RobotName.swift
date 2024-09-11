//Solution goes in Sources
struct Robot {
    var name: String
    
    init() {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let numbers = "0123456789"
        let randomLetters = String((0..<2).map { _ in letters.randomElement()! })
        let randomNumbers = String( (0..<3).map { _ in numbers.randomElement()! })
        name = "\(randomLetters)\(randomNumbers)"
    }

     mutating func resetName() {
        self.name = Robot().name
    }
}