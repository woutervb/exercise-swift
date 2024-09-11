enum HammingError: Error {
    case differentLength
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
    if dnaSequence.count != against.count {
        throw HammingError.differentLength
    }
    return zip(dnaSequence, against).reduce(0) { $0 + ($1.0 != $1.1 ? 1 : 0) }
}
