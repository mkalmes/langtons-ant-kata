import XCTest
@testable import langtons_ant_kata

final class antTests: XCTestCase {

    func testAntInitializeIsHeadingNorth() throws {
        let ant = Ant()

        XCTAssertEqual(ant.heading, .north)
    }

}
