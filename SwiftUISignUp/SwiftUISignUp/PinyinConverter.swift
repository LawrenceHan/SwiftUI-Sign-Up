

import Foundation

/// stealed from https://nshipster.com/cfstringtransform/
struct PinyinConverter {
    static func convert(with text: String, separator: String = "", reverse: Bool = false) -> String {
        let mutableString = NSMutableString(string: text) as CFMutableString
        
        // 1, apply the kCFStringTransformToLatin transform to transliterate all non-English text into a Latin alphabetic representation.
        CFStringTransform(mutableString, nil, kCFStringTransformToLatin, reverse)
        
        // 2, apply the kCFStringTransformStripCombiningMarks transform to remove any diacritics or accents.
        CFStringTransform(mutableString, nil, kCFStringTransformStripCombiningMarks, reverse)
        
        // 3, Finally, downcase the text with CFStringLowercase, and split the text into tokens with CFStringTokenizer to use as an index for the text.
        let tokenizer = CFStringTokenizerCreate(nil, mutableString, CFRangeMake(0, CFStringGetLength(mutableString)), 0, CFLocaleCopyCurrent())
        var mutableTokens: [String] = []
        var type: CFStringTokenizerTokenType
        repeat {
            type = CFStringTokenizerAdvanceToNextToken(tokenizer)
            let range = CFStringTokenizerGetCurrentTokenRange(tokenizer)
            let token = CFStringCreateWithSubstring(nil, mutableString, range) as NSString
            mutableTokens.append(token as String)
        } while type != []
        
        return mutableTokens.joined(separator: separator)
    }
}
