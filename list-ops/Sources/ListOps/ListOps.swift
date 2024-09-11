//Solution goes in Sources
func append(_ list1: [Int], _ list2: [Int]) -> [Int] {
    return list1 + list2
}

func concat(_ lists: [Int]...) -> [Int] {
    return lists.flatMap { $0 }
}

func filter(_ list: [Int], _ f: (Int) -> Bool) -> [Int] {
    return list.filter(f)
}

func length(_ list: [Int]) -> Int {
    return list.count
}

func map(_ list: [Int], _ f: (Int) -> Int) -> [Int] {
    return list.map(f)
}

func foldLeft<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
    return list.reduce(accumulated, combine)
}

func foldRight<T>(_ list: [T], accumulated: T, combine: (T, T) -> T) -> T {
    return list.reversed().reduce(accumulated) { combine($1, $0) }
}

func reverse(_ list: [Int]) -> [Int] {
    return list.reversed()
}