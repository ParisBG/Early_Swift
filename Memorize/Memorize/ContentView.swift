//
//  ContentView.swift
//  Memorize
//
//  Created by Paris G on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗","🚕","🏎","🚓","🚔","🚘","🚖"]

    @State var emojiCount = 5
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "brain.head.profile")
                Text("P's Memorize!").font(.largeTitle)
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id:\.self){
                        emoji in CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }.foregroundColor(.green)
              
        }.padding(.horizontal)
    }
}
    

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
            Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
 }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.light)
    }
}

struct CardDeckView: View {
     var body: some View {
        var cars = ["🚗","🚕","🏎","🚓","🚔","🚘","🚖","🚥"]
        var trucks = ["🚙","🚌","🚎","🚑","🚒","🚐","🛻","🚚","🚛","🚜","🚍"]
//        var aircraft = ["✈️","🚀","🚡","🛰","🚁","🛸","🛩","🛬","🛫"]
//        var cycles = ["🚲","🛵","🏍","🦽","🦼","🛴","🦯","🛺"]
//        var boats = ["🛳","⛵️","🛶","🚤","🛥","⛴","🚢","⚓️"]
//        var trains = ["🚉","🚊","🚇","🚆","🚂","🚈","🚅","🚄","🚝","🚞","🚋","🚃","🚟","🚠","🚡"]
        
//        var decks = [cars, trucks, aircraft, cycles, trains, boats]
    }
}

/*
Spacer()
HStack {
    removeButton
    Spacer()
    addButton
}.padding(.horizontal).font(.largeTitle)
}.padding(.horizontal)
 
var removeButton: some View {
Button(action: {
if emojiCount > 1 {
    emojiCount -= 1
}
}, label: {
Image(systemName: "minus.circle")
})
}


var addButton: some View {
Button(action: {emojiCount+=1}, label: {
Image(systemName: "plus.circle")
})
}
 
 //TESTING TO ADD THIS BUTTON!
 var themeButton: some View {
     Button(action: {
         //On click cardview Theme should change
         //Max 8 cards on screen (or whatever max is for that deck
     }, label: {
         Image(systemName: "wand.and.stars.inverse")
     })
 }

}

*/
