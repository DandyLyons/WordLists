# WordLists
This is a collection of word lists that can be loaded using Swift and used for various purposes, such as word games. The lists are stored in text files and can be easily imported into your programs.
                                                            
Words can be added to a data structure such as a _Trie_ for fast lookup.
                                                            
## Usage
```swift
let wordList: [String] = WordLists.loadWordsFrom(
        file: .wordnik_wordlist_198422,
        minWordLength: 3,
        maxWordLength: 10
    )
```

## Licensing
All code in this repo is provided under the MIT license. 

Each list of words has its own licensing. Read the LICENSE file in each word list to find their license. Some of the word lists are provided under public domain, in which case they can be used freely without obligations. All others are provided with permissive, open, standard licenses like the MIT license. Be sure to read the LICENSE file for each word list that you plan to use. 

## Acknowledgments
- Michael Wehar for providing [Public Domain Word Lists](https://github.com/MichaelWehar/Public-Domain-Word-Lists)
- Wordnik: https://github.com/wordnik/wordlist/blob/main/LICENSE 