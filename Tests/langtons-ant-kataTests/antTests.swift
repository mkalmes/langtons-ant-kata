import XCTest
@testable import langtons_ant_kata

final class antTests: XCTestCase {

    func testAntInitializeIsHeadingNorth() throws {
        let ant = Ant()

        XCTAssertEqual(ant.heading, .north)
    }

    func testAntTurningLeftIsHeadingInTheRightDirection() throws {
        let testCases = [
            (direction: CardinalDirection.north, newDirection: CardinalDirection.west),
            (direction: CardinalDirection.east, newDirection: CardinalDirection.north),
            (direction: CardinalDirection.south, newDirection: CardinalDirection.east),
            (direction: CardinalDirection.west, newDirection: CardinalDirection.south)
        ]
        for (direction, newDirection) in testCases {
            XCTContext.runActivity(named: "Expect ant heading \(direction) and turning left to head to \(newDirection)") { activity in
                var ant = Ant(direction)

                ant.turnLeft()

                XCTAssertEqual(ant.heading, newDirection)
            }
        }
    }

    func testAntWhenHeadingNorthAndTurningRigthIsHeadingEast() throws {
        var ant = Ant()

        ant.turnRight()

        XCTAssertEqual(ant.heading, .east)
    }

}
