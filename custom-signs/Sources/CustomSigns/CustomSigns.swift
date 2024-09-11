// TODO: define the 'birthday' String constant
let birthday = "Birthday"

// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"

// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"

// TODO: define the 'space' Character constant
let space: Character = " "

// TODO: define the 'exclamation' Character constant
let exclamation : Character = "!"

func buildSign(for occasion: String, name: String) -> String {
    if occasion == valentine {
        return "Happy \(valentine) \(name)!"
    }
    if occasion == anniversary {
        return "Happy \(anniversary) \(name)!"
    }
    return "Happy \(birthday) \(name)!"
}

func graduationFor(name: String, year: Int) -> String {
    return "Congratulations \(name)!\nClass of \(year)"
}

func costOf(sign: String) -> Int {
    print(sign)
    return 20 + (2 * sign.count)
}
