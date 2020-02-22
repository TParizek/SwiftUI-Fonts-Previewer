//
//  SwiftUIFont.swift
//  SwiftUIFonts
//
//  Created by Tomas Parizek on 2/22/20.
//  Copyright © 2020 Tomas Parizek. All rights reserved.
//

import SwiftUI

enum SwiftUIFont: CaseIterable {
    
    case largeTitle
    case title
    case headline
    case subheadline
    case body
    case callout
    case footnote
    case caption
    
    var font: Font {
        switch self {
        case .largeTitle:
            return Font.largeTitle
        case .title:
            return Font.title
        case .headline:
            return Font.headline
        case .subheadline:
            return Font.subheadline
        case .body:
            return Font.body
        case .callout:
            return Font.callout
        case .footnote:
            return Font.footnote
        case .caption:
            return Font.caption
        }
    }
    
    var fontName: String {
        switch self {
        case .largeTitle:
            return "Large Title"
        case .title:
            return "Title"
        case .headline:
            return "Headline"
        case .subheadline:
            return "Subheadline"
        case .body:
            return "Body"
        case .callout:
            return "Callout"
        case .footnote:
            return "Footnote"
        case .caption:
            return "Caption"
        }
    }
}
