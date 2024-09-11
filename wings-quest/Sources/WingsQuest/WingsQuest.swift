func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  return powerUpActive && touchingEagle
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
  (touchingPowerUp || touchingSeed)
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    touchingEagle && !powerUpActive
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    hasPickedUpAllSeeds && !lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle)
}
