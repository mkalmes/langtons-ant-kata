struct Ant {
    var heading: CardinalDirection = .north

    mutating func turnLeft() {
        heading = .west
    }

    mutating func turnRight() {
        heading = .east
    }
}
