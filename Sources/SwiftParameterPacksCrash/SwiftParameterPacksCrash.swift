// The Swift Programming Language
// https://docs.swift.org/swift-book
public protocol DIResolver {
    func resolve<each Arg>(args: repeat each Arg)
}

struct DIContainer: DIResolver {
    func resolve<each Arg>(args: repeat each Arg) {
        print("\((repeat each args))")
    }
}
