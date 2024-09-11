enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}
struct CircularBuffer {
    private let capacity: Int
    private var buffer = [Int]()
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    mutating func write(_ value: Int) throws {
        guard buffer.count < capacity else {
            throw CircularBufferError.bufferFull
        }
        
        buffer.append(value)
    }
    
    mutating func read() throws -> Int {
        guard !buffer.isEmpty else {
            throw CircularBufferError.bufferEmpty
        }
        
        return buffer.removeFirst()
    }
    
    mutating func clear() {
        buffer = [Int]()
    }
    
    mutating func overwrite(_ value: Int) {
        if buffer.count < capacity {
            try! write(value)
        } else {
            buffer.removeFirst()
            buffer.append(value)
        }
    }
}

