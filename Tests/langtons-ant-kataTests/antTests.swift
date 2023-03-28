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

    func testAntTurningRigthIsHeadingInTheRightDirection() throws {
        let testCases = [
            (direction: CardinalDirection.north, newDirection: CardinalDirection.east),
            (direction: CardinalDirection.east, newDirection: CardinalDirection.south),
            (direction: CardinalDirection.south, newDirection: CardinalDirection.west),
            (direction: CardinalDirection.west, newDirection: CardinalDirection.north)
        ]
        for (direction, newDirection) in testCases {
            XCTContext.runActivity(named: "Expect ant heading \(direction) and turning left to head to \(newDirection)") { activity in
                var ant = Ant(direction)

                ant.turnRight()

                XCTAssertEqual(ant.heading, newDirection)
            }
        }
    }

}
