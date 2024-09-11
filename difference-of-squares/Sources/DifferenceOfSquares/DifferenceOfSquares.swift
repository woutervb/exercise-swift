class Squares {
    var number: Int
    
    init(_ number: Int) {
        self.number = number
    }
    
    var squareOfSum: Int {
        var sum: Int = 0
        for count in 1...number {
            sum += count
        }
        return sum * sum
    }
    
    var sumOfSquares: Int {
        var sum: Int = 0
        for count in 1...number {
            sum += count*count
        }
        return sum
    }
    
    var differenceOfSquares: Int {
        return Squares(number).squareOfSum - Squares(number).sumOfSquares
    }
}
