//
//  ContentView.swift
//  L1 Demo
//
//  Created by Somto Nnozuba on 4/6/24.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Form(content: {
//            Section{
//                Text("Hello Somto")
//                Text("Hello Somto")
//            }
//            Text("Hello Somto")
//            Text("Hello Somto")
//            Text("Hello Somto")
//            Section{
//                Text("Hello Somto")
//                Text("Hello Somto")
//                Text("Hello Somto")
//                Text("Hello Somto")
//            }
//        }
// )
//    }
//}

struct ContentView: View {
    var body: some View{
        HStack {
            CardView(isFaceUp: true)
                CardView()
                CardView()
                CardView()
            
             }

   }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
            ZStack{
                if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.white)
                Text("👻").font(.largeTitle)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2) //default color for this view and any view in light mode is black and for dark mode is white
                //anything below can pnly be applied top the border view
                //By default SwiftUI makes any shape you make in light mode black and dark mode white
                //cos all Light mode is is setting bacckground(Color.black) and light mode(Color.white)
                //By calling strokeBorder you no longer have access to the full area of the rectangle but only the border area whic is the new View returned!
                //.background(Color.green)
                //.foregroundColor(.green)
                
            }
                else{
                    RoundedRectangle(cornerRadius: 12)
                }
            
        }
        .foregroundColor(.orange)
        //.background(Color.green)
        .imageScale(.small)
        .padding()
//            Label("Verified", systemImage: "checkmark.seal.fill")
//                .foregroundColor(.red)
//                .font(.callout)
//                .padding()
//                .background(Color.green)
//                .border(Color.red)
    }
}








//Only for preeview here in xcode won't influence your final production code
#Preview {
    ContentView()
}
