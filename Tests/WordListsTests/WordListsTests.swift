import Testing
@testable import WordLists

@Test func eachWordListLoadsAndIsNotEmpty() {
    for file in File.allCases {
        let words = WordLists.loadWordsFrom(file: file)
        #expect(words.count > 0)
    }
}
