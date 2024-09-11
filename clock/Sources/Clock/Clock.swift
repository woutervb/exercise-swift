import Foundation

struct Clock: Equatable {
  let hours: Int
  let minutes: Int
  init (hours: Int, minutes: Int) {
      let totalMinutes = hours * 60 + minutes
      var hours = (totalMinutes / 60) % 24      
      var minutes = totalMinutes % 60
      while minutes < 0 {
        hours -= 1
        minutes += 60
      }
      while hours < 0 {
        hours += 24
      }
      self.hours = hours
      self.minutes = minutes
  }

  func subtract(minutes: Int) -> Clock {
    let totalMinutes = self.hours * 60 + self.minutes - minutes
    let hours = (totalMinutes / 60 + 24) % 24
    let minutes = totalMinutes % 60
    return Clock(hours: hours, minutes: minutes)
  }

  var description: String {
    return String(format: "%02d:%02d", hours, minutes)
  }

  func add(minutes: Int) -> Clock {
    let totalMinutes = self.hours * 60 + self.minutes + minutes
    let hours = (totalMinutes / 60 + 24) % 24
    let minutes = totalMinutes % 60
    return Clock(hours: hours, minutes: minutes)
  }

}
