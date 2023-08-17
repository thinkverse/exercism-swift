func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let totalMonthlyBudget: Double = monthlyBudget * 60
  let budgetOverCharge: Double = totalMonthlyBudget * 0.10

  if price <= totalMonthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  } else if price <= totalMonthlyBudget + budgetOverCharge {
    return "I'll have to be frugal if I want a \(vehicle)"
  } else {
    return "Darn! No \(vehicle) for me"
  }
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  } else if wheels == 2 || wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  } else {
    return "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if yearsOld < 3 {
    return Int(Double(originalPrice) * 0.8)
  } else if yearsOld >= 3 && yearsOld < 10 {
    return Int(Double(originalPrice) * 0.7)
  } else {
    return Int(Double(originalPrice) * 0.5)
  }
}
