func timeToPrepare(drinks: [String]) -> Double {
  var total : Double = 0

  for drink in drinks {
    switch (drink) {
      case "beer", "soda", "water": total += 0.5
      case "shot": total += 1
      case "mixed drink": total += 1.5
      case "fancy drink": total += 2.5
      case "frozen drink": total += 3
      default: continue
    }
  }
  return total
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var limeCount = 0
  var cut = 0
  if needed == 0 { return 0 }
  while cut < needed  && limeCount < limes.count {
    let lime = limes[limeCount]
    limeCount += 1
    switch (lime) {
      case "small": cut += 6
      case "medium": cut += 8
      case "large": cut += 10
      default: continue
    }
  } 
  return limeCount
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var left = Double(minutesLeft)
  var orders = remainingOrders
  orders.reverse()
  repeat {
    let order = orders.popLast()
    left -= timeToPrepare(drinks: order!)
  } while (orders.count > 0 && left > 0)

  orders.reverse()
  return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var beerTotal = 0
  var beerFist: String = ""
  var beerLast: String = ""
  var sodaTotal = 0
  var sodaFist: String = ""
  var sodaLast: String = ""

  for order in orders {
      if order.drink == "beer" {
          beerTotal += 1
          if beerTotal == 1 {
              beerFist = order.time
              beerLast = order.time
          } else {
              beerLast = order.time
          }
      }
      if order.drink == "soda" {
          sodaTotal += 1
          if sodaTotal == 1 {
              sodaFist = order.time
              sodaLast = order.time
          } else {
              sodaLast = order.time
          }
      }
  
  }

  var beer:  (first: String, last: String, total: Int)?
  var soda:  (first: String, last: String, total: Int)?

  if beerTotal > 0 {
      beer = (first: beerFist, last: beerLast, total: beerTotal)
  }

  if sodaTotal > 0 {
      soda = (first: sodaFist, last: sodaLast, total: sodaTotal)
  }

  return (beer: beer, soda: soda)
}
