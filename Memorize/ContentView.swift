//
//  ContentView.swift
//  Memorize
//
//  Created by Marcus Erick Hinojosa Piña on 13/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView( isFaceUp: true )
            CardView()
            CardView()
            CardView( isFaceUp: true )
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp == true {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.orange)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
