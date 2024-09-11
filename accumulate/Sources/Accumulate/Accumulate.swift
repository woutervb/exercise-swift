extension Array {
    func accumulate<T>(_ operation: (Element) -> T) -> [T] {
        var result = [T]()
        for element in self {
            result.append(operation(element))
        }
        return result
    }
}