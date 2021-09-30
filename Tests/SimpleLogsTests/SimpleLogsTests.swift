import XCTest
@testable import SimpleLogs

final class SimpleLogsTests: XCTestCase
{
        func testInfoLog()
    {
        let MESSAGE  = "Hello World!"
        let FUNCTION = #function
        let FILE     = #fileID
        let LINE     = #line + 2 // NOTE: Adjust offset if moving lines

        let words = INFO(MESSAGE)
                        .components(separatedBy: " ")

        XCTAssertGreaterThan(words.count, 0)

        XCTAssertEqual(words[0], "ℹ️")
        XCTAssertEqual(words[1], "INFO:")
        XCTAssertEqual(words[2], FUNCTION)
        XCTAssertEqual(words[3], "(" + FILE)
        XCTAssertEqual(words[6], String(LINE) + "):")
        XCTAssertEqual(words[words.count-2] + " " + words[words.count-1], MESSAGE)
    }

    func testWarningLog()
    {
        let MESSAGE  = "Hello World!"
        let FUNCTION = #function
        let FILE     = #fileID
        let LINE     = #line + 2 // NOTE: Adjust offset if moving lines

        let words = WARNING(MESSAGE)
                        .components(separatedBy: " ")

        XCTAssertGreaterThan(words.count, 0)

        XCTAssertEqual(words[0], "⚠️")
        XCTAssertEqual(words[1], "WARNING:")
        XCTAssertEqual(words[2], FUNCTION)
        XCTAssertEqual(words[3], "(" + FILE)
        XCTAssertEqual(words[6], String(LINE) + "):")
        XCTAssertEqual(words[words.count-2] + " " + words[words.count-1], MESSAGE)
    }

    func testErrorLog()
    {
        let MESSAGE  = "Hello World!"
        let FUNCTION = #function
        let FILE     = #fileID
        let LINE     = #line + 2 // NOTE: Adjust offset if moving lines

        let words = ERROR("Hello World!")
                        .components(separatedBy: " ")

        XCTAssertGreaterThan(words.count, 0)

        XCTAssertEqual(words[0], "⛔️")
        XCTAssertEqual(words[1], "ERROR:")
        XCTAssertEqual(words[2], FUNCTION)
        XCTAssertEqual(words[3], "(" + FILE)
        XCTAssertEqual(words[6], String(LINE) + "):")
        XCTAssertEqual(words[words.count-2] + " " + words[words.count-1], MESSAGE)
    }
}
