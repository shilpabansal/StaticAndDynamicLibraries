//
//  RemoteFeedContent.swift
//  LibraryAndFrameworks
//
//  Created by Shilpa Bansal on 23/01/21.
//

import Foundation

public class RemoteFeedContent: FeedContentProtocol {
    public init() {}
    public func getFeeds() -> [String] {
        return ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    }
}
