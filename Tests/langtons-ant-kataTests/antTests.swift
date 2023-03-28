import XCTest
@testable import langtons_ant_kata

final class antTests: XCTestCase {

    func testAntInitializeIsHeadingNorth() throws {
        let ant = Ant()

        XCTAssertEqual(ant.heading, .north)
    }

    func testAntWhenHeadingNorthAndTurningLeftIsHeadingWest() throws {
        var ant = Ant()

        ant.turnLeft()

        XCTAssertEqual(ant.heading, .west)
    }

}
