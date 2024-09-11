// // Write your code for the 'Flatten-Array' exercise in this file.

func flattenArray<T>(_ input: [Any?]) -> [T] {
    var result: [T] = []
    for element in input {
        if let element = element as? [Any?] {
            result += flattenArray(element)
        } else if let element = element as? T {
            result.append(element)
        }
    }
    return result
}