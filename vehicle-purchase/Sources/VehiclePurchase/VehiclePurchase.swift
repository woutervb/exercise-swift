func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthlyPrice = price / (12.0 * 5.0)
    if monthlyPrice > monthlyBudget {
        if monthlyPrice < (monthlyBudget * 1.1) {
            return "I'll have to be frugal if I want a \(vehicle)"
        }
        return "Darn! No \(vehicle) for me"
    }
    return "Yes! I'm getting a \(vehicle)"
}

func licenseType(numberOfWheels wheels: Int) -> String {
    var licenseType: String = ""

    if wheels == 2 || wheels == 3 {
        licenseType = "a motorcycle"
    } else if wheels == 4 || wheels == 6 {
        licenseType = "an automobile"
    } else if wheels == 18 {
        licenseType = "a commercial trucking"
    }
    
    if licenseType == "" {
        return "We do not issue licenses for those types of vehicles"
    }
    
    return "You will need \(licenseType) license for your vehicle"
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    if yearsOld < 3 {
        return Int(Double(originalPrice) * 0.8)
    } else if yearsOld < 10 {
        return Int(Double(originalPrice) * 0.7)
    } else {
        return Int(Double(originalPrice) * 0.5)
    }
}
