//
//  XCTest+Additions.swift
//

import Foundation
import XCTest
import Difference

@inline(__always)
internal func _XCTAssertEqual<T: Equatable>(_ received: T, _ expected: T, file: StaticString = #file, line: UInt = #line) {
    XCTAssertTrue(received == expected, "Found difference for \n" + diff(expected, received).joined(separator: ", "), file: file, line: line)
}

internal func XCTAssertEqual<T: Equatable>(_ expected: T, _ received: T, file: StaticString = #file, line: UInt = #line) {
    _XCTAssertEqual(expected, received, file: file, line: line)
}
