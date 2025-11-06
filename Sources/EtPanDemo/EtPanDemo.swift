// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import clibetpan
// import clibcurl

@main
struct EtPanDemo: ParsableCommand {
    mutating func run() throws {
        print("Hello, world!")

        //  Libetpan function call
        mailimf_mailbox_list_new_empty()

        print("libetpan version: \(libetpan_get_version_major()).\(libetpan_get_version_minor()) ")

    }
}
