struct Ant {
    var heading: CardinalDirection

    init(_ heading: CardinalDirection = .north) {
        self.heading = heading
    }

    mutating func turnLeft() {
        switch heading {
        case .north:
            heading = .west
        case .west:
            heading = .south
        case .south:
            heading = .east
        case .east:
            heading = .north
        }
    }

    mutating func turnRight() {
        heading = .east
    }
}
