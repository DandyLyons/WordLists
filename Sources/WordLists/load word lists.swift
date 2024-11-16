//
//  load word lists.swift
//  LetterGridGameCLI
//
//  Created by Daniel Lyons on 2024-10-21.
//

import Foundation
import OSLog

public enum WordLists {
    public static func loadWordsFrom(file: File, minWordLength: Int = 3, maxWordLength: Int = 10) -> [String] {
        guard let url = file.url else {
            let logger = Logger()
            logger.error("File not found.")
            assertionFailure("File not found")
            return []
        }
        
        do {
            let content = try String(contentsOf: url, encoding: .utf8)
            let words: [String] = content.components(separatedBy: .newlines)
                .compactMap {
                    let word = $0.trimmingCharacters(in: .whitespacesAndNewlines)
                        .trimmingCharacters(in: .punctuationCharacters)
                    
                    
                    guard !word.isEmpty else { return nil }
                    guard word.count >= minWordLength else { return nil } // remove words less than 3 letters long
                    guard word.count <= maxWordLength else { return nil } // remove words greater than 10 letters long
                    return word
                }
            return words
        } catch {
            let logger = Logger()
            logger.error("\(error)")
            assertionFailure("Parsing error.")
            return []
        }
    }
}

public enum File: CaseIterable {
    case english_5000_more_common
    case wordnik_wordlist_198422
    
    public var url: URL? {
        switch self {
            case .english_5000_more_common:
                return Bundle.module.url(forResource: "5000-more-common", withExtension: "txt")
            case .wordnik_wordlist_198422:
                return Bundle.module.url(forResource: "wordlist-20210729", withExtension: "txt")
        }
    }
}
