//
//  FontRowView.swift
//  SwiftUIFonts
//
//  Created by Tomas Parizek on 2/22/20.
//  Copyright © 2020 Tomas Parizek. All rights reserved.
//

import SwiftUI

struct FontRowView: View {
    
    let fontName: String
    let font: Font
    private let sampleText = "Lorem ipsum dolor sit. 123"
    
    @Binding var boldActive: Bool
    @Binding var italicActive: Bool
    
    var body: some View {
        VStack {
            Text(fontName)
                .italic()
                .bold()
                .foregroundColor(Color.blue)
                .opacity(0.75)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 8)
            if (boldActive && italicActive) {
                Text(sampleText)
                    .bold()
                    .italic()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(font)
            } else if (boldActive && !italicActive) {
                Text(sampleText)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(font)
            } else if (!boldActive && italicActive) {
                Text(sampleText)
                    .italic()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(font)
            } else {
                Text(sampleText)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(font)
            }
        }
    }
}

struct FontRowView_Previews: PreviewProvider {
    static var previews: some View {
        FontRowView(fontName: "Title", font: Font.title, boldActive: .constant(false), italicActive: .constant(false))
    }
}
