enum Direction: Int {
    case north = 0
    case east = 1
    case south = 2
    case west = 3
}

class SimulatedRobot {
  var x: Int
  var y: Int
  var bearing: Direction

  init(x: Int, y: Int, bearing: Direction) {
    self.x = x
    self.y = y
    self.bearing = bearing
  }

  var state: (x: Int, y: Int, bearing: Direction) {
    return (x, y, bearing)
  }

  func move(commands: String) {
    for command in commands {
      switch command {
      case "A":
        switch bearing {
        case .north:
          y += 1
        case .south:
          y -= 1
        case .east:
          x += 1
        case .west:
          x -= 1
        }
      case "L":
        bearing = Direction(rawValue: (bearing.rawValue + 3) % 4)!
      case "R":
        bearing = Direction(rawValue: (bearing.rawValue + 1) % 4)!
      default:
        break
      }
    }
  }
}
