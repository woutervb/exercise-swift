func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    return ((dailyRateFrom(hourlyRate: hourlyRate) * 22.0) * (100 - discount)/100).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (budget / (Double(hourlyRate * 8) * (100 - discount)/100)).rounded(.down)
}
