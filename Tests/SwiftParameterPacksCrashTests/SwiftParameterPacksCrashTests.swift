import XCTest
@testable import SwiftParameterPacksCrash

struct Test {
    let a: Int
    let b: String
}

final class SwiftParameterPacksCrashTests: XCTestCase {
    func test_Container_Resolves() throws {
        let container = DIContainer()
        container.resolve(args: "test", 1, 1.0, Test(a: 15, b: "what?"))
    }

    func test_ContainerCastAsResolver_Resolves() throws {
        let container = DIContainer()
        // Cast container to protocol it's conforming to
        let resolver = container as DIResolver
        // 💥 Crash
        resolver.resolve(args: "test", 1, 1.0, Test(a: 15, b: "what?"))
    }
}
