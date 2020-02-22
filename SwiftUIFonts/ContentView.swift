//
//  ContentView.swift
//  SwiftUIFonts
//
//  Created by Tomas Parizek on 2/22/20.
//  Copyright © 2020 Tomas Parizek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var boldActive: Bool = false
    @State var italicActive: Bool = false
    
    var body: some View {
        NavigationView {
            List(SwiftUIFont.allCases, id: \.self) { font in
                FontRowView(fontName: font.fontName, font: font.font, boldActive: self.$boldActive, italicActive: self.$italicActive)
                    .padding(.vertical)
                    .padding(.bottom, font == SwiftUIFont.allCases.last! ? 32 : 0)
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("SwiftUI Fonts")
            .navigationBarItems(trailing: HStack {
                Button(action: {
                    self.boldActive.toggle()
                }) {
                    Image(systemName: "bold")
                }
                .padding()
                .opacity(boldActive ? 1 : 0.5)
                Button(action: {
                    self.italicActive.toggle()
                }) {
                    Image(systemName: "italic")
                }
                .padding([.top, .trailing, .bottom])
                .opacity(italicActive ? 1 : 0.5)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
