func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8
}

// Had do look up exemplar for discount calculation.
func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return ((dailyRateFrom(hourlyRate: hourlyRate) * 22) * (1.0 - (discount / 100))).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (((budget / (1.0 - (discount / 100))) / Double(hourlyRate)) / 8).rounded(.down)
}
