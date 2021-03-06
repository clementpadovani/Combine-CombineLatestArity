//
//  CombineLatest+ArityTests.swift
//  CombineCombineLatestArityTests
//

import XCTest
import Combine
@testable import CombineCombineLatestArity
import Entwine
import EntwineTest

internal final class CombineLatestArityTests: XCTestCase {
    private var scheduler: TestScheduler!

    override func setUp() {
        super.setUp()

        scheduler = .init()
    }

    override func tearDown() {
        scheduler = nil

        super.tearDown()
    }

    func testCombineLatest5() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 5)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest6() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 6)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest7() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 7)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest8() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 8)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest9() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 9)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest10() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 10)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest11() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 11)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest12() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 12)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest13() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 13)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest14() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 14)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest15() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 15)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest16() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 16)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest17() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 17)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest18() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 18)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest19() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 19)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest20() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 20)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest21() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler),
                               createPublisher(emitting: 21,
                                               at: 21,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 21)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest22() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler),
                               createPublisher(emitting: 21,
                                               at: 21,
                                               with: self.scheduler),
                               createPublisher(emitting: 22,
                                               at: 22,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 22)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest23() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler),
                               createPublisher(emitting: 21,
                                               at: 21,
                                               with: self.scheduler),
                               createPublisher(emitting: 22,
                                               at: 22,
                                               with: self.scheduler),
                               createPublisher(emitting: 23,
                                               at: 23,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 23)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest24() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler),
                               createPublisher(emitting: 21,
                                               at: 21,
                                               with: self.scheduler),
                               createPublisher(emitting: 22,
                                               at: 22,
                                               with: self.scheduler),
                               createPublisher(emitting: 23,
                                               at: 23,
                                               with: self.scheduler),
                               createPublisher(emitting: 24,
                                               at: 24,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 24)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest25() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler),
                               createPublisher(emitting: 21,
                                               at: 21,
                                               with: self.scheduler),
                               createPublisher(emitting: 22,
                                               at: 22,
                                               with: self.scheduler),
                               createPublisher(emitting: 23,
                                               at: 23,
                                               with: self.scheduler),
                               createPublisher(emitting: 24,
                                               at: 24,
                                               with: self.scheduler),
                               createPublisher(emitting: 25,
                                               at: 25,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 25)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest26() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler),
                               createPublisher(emitting: 21,
                                               at: 21,
                                               with: self.scheduler),
                               createPublisher(emitting: 22,
                                               at: 22,
                                               with: self.scheduler),
                               createPublisher(emitting: 23,
                                               at: 23,
                                               with: self.scheduler),
                               createPublisher(emitting: 24,
                                               at: 24,
                                               with: self.scheduler),
                               createPublisher(emitting: 25,
                                               at: 25,
                                               with: self.scheduler),
                               createPublisher(emitting: 26,
                                               at: 26,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 26)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }

    func testCombineLatest27() {
        let combinedPublisher = scheduler.start { () -> AnyPublisher<[Int], NSError> in
            return createPublisher(emitting: 1,
                                   at: 1,
                                   with: self.scheduler)
                .combineLatest(createPublisher(emitting: 2,
                                               at: 2,
                                               with: self.scheduler),
                               createPublisher(emitting: 3,
                                               at: 3,
                                               with: self.scheduler),
                               createPublisher(emitting: 4,
                                               at: 4,
                                               with: self.scheduler),
                               createPublisher(emitting: 5,
                                               at: 5,
                                               with: self.scheduler),
                               createPublisher(emitting: 6,
                                               at: 6,
                                               with: self.scheduler),
                               createPublisher(emitting: 7,
                                               at: 7,
                                               with: self.scheduler),
                               createPublisher(emitting: 8,
                                               at: 8,
                                               with: self.scheduler),
                               createPublisher(emitting: 9,
                                               at: 9,
                                               with: self.scheduler),
                               createPublisher(emitting: 10,
                                               at: 10,
                                               with: self.scheduler),
                               createPublisher(emitting: 11,
                                               at: 11,
                                               with: self.scheduler),
                               createPublisher(emitting: 12,
                                               at: 12,
                                               with: self.scheduler),
                               createPublisher(emitting: 13,
                                               at: 13,
                                               with: self.scheduler),
                               createPublisher(emitting: 14,
                                               at: 14,
                                               with: self.scheduler),
                               createPublisher(emitting: 15,
                                               at: 15,
                                               with: self.scheduler),
                               createPublisher(emitting: 16,
                                               at: 16,
                                               with: self.scheduler),
                               createPublisher(emitting: 17,
                                               at: 17,
                                               with: self.scheduler),
                               createPublisher(emitting: 18,
                                               at: 18,
                                               with: self.scheduler),
                               createPublisher(emitting: 19,
                                               at: 19,
                                               with: self.scheduler),
                               createPublisher(emitting: 20,
                                               at: 20,
                                               with: self.scheduler),
                               createPublisher(emitting: 21,
                                               at: 21,
                                               with: self.scheduler),
                               createPublisher(emitting: 22,
                                               at: 22,
                                               with: self.scheduler),
                               createPublisher(emitting: 23,
                                               at: 23,
                                               with: self.scheduler),
                               createPublisher(emitting: 24,
                                               at: 24,
                                               with: self.scheduler),
                               createPublisher(emitting: 25,
                                               at: 25,
                                               with: self.scheduler),
                               createPublisher(emitting: 26,
                                               at: 26,
                                               with: self.scheduler),
                               createPublisher(emitting: 27,
                                               at: 27,
                                               with: self.scheduler))
                .tryMap(self.makeArray(from:))
                .mapError { $0 as NSError }
                .eraseToAnyPublisher()
        }

        let expectedResults = createExpectedEvents(subscriptionTime: TestScheduler.Configuration.default.subscribed,
                                                   from: 1,
                                                   count: 27)

        XCTAssertEqual(combinedPublisher.recordedOutput, expectedResults)
    }
}

private extension CombineLatestArityTests {
    func createExpectedEvents(subscriptionTime: TestScheduler.SchedulerTimeType, from: Int, count: Int) -> TestSequence<[Int], NSError> {
        let resultArray = (from..<(from + count))
            .reduce(into: []) { accumulator, item in
                accumulator.append(item)
            }

        return TestSequence([
            (subscriptionTime, .subscription),
            (subscriptionTime + TestScheduler.SchedulerTimeType(count), .input(resultArray))
        ])
    }
}

private func createPublisher<Value>(emitting item: Value, at time: TestScheduler.SchedulerTimeType, with scheduler: TestScheduler) -> TestablePublisher<Value, NSError> {
    return scheduler.createRelativeTestablePublisher([
        (time, .input(item))
    ])
}

private extension CombineLatestArityTests {
    enum TupleConversionError: Error {
        case invalidDisplayStyle(Mirror.DisplayStyle?)
        case superclassMirrorPresent(Mirror)
        case tupleEmpty
        case kindMismatch(Any)
    }

    func makeArray<Tuple, Value>(from tuple: Tuple) throws -> [Value] {
        let tupleMirror = Mirror(reflecting: tuple)

        guard tupleMirror.displayStyle == .tuple else {
            throw TupleConversionError.invalidDisplayStyle(tupleMirror.displayStyle)
        }

        if let superclassMirror = tupleMirror.superclassMirror {
            throw TupleConversionError.superclassMirrorPresent(superclassMirror)
        }

        guard tupleMirror.children.isEmpty == false else {
            throw TupleConversionError.tupleEmpty
        }

        func convert(child: Mirror.Child) throws -> Value {
            guard let value = child.value as? Value else {
                throw TupleConversionError.kindMismatch(child.value)
            }

            return value
        }

        return try tupleMirror.children.compactMap(convert(child:))
    }
}
