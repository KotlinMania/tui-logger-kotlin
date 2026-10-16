#if canImport(Testing)
import Testing
import TuiLogger

@Suite("TuiLogger Swift Export Tests")
struct TuiLoggerExportTests {
    @Test("TuiLogger swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "TuiLogger swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import TuiLogger

final class TuiLoggerExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "TuiLogger swift module imported cleanly")
    }
}
#endif
