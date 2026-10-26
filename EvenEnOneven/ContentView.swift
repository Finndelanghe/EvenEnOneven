//
//  ContentView.swift
//  EvenEnOneven
//
//  Created by Finn Delanghe on 12/10/2026.
//

import SwiftUI

struct ContentView: View {
    @State var invoer: String = ""
    @State var uitvoer: String = ""
    var body: some View {
        VStack {
            HeaderView("Even en Oneven", subtitle: "@State, Gehele deling Tertiare operator, Textfield Button", desc: " De app berekent van een gegeven getal of het even of oneven is", back: .blue
                       , textColor: .white)
       
        Spacer()
            
            
            TextField(text: $invoer, label: {
                Text("geef een getal in:")
                
            })
            .padding()
            
            Button("Even of Oneven") {
                if let getal = Int(invoer) {
                    if (getal % 2) == 0 {
                        uitvoer = "even"
                    } else  {
                        uitvoer = "oneven"
                        
                    }
                    uitvoer = getal % 2 == 0 ? "even" : "oneven"
                    
                    
                } else {
                    uitvoer = "je moet een geheel getal intikken"
                }
                
                }
            
            .padding(.bottom, 40)
            
        
     
            
        
        Spacer()
            Text(uitvoer)
            Spacer()
            
            
     
            
            
        
            
            
        }

        
    }
}

#Preview {
    ContentView()
}
