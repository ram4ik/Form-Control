//
//  ContentView.swift
//  Form&Control
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var type = 1
    @State var size = 2
    @State var souce = 3
    
    @State var name = ""
    @State var address = ""
    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    Picker(selection: $type, label: Text("Type")) {
                        Text("Margarita").tag(1)
                        Text("Quatro Stagioni").tag(2)
                        Text("Quatro Fromagi").tag(3)
                        Text("Vegeterian").tag(4)
                    }
                    Picker(selection: $size, label: Text("Size")) {
                        Text("Small").tag(1)
                        Text("Medium").tag(2)
                        Text("Large").tag(3)
                        
                    }
                    Picker(selection: $souce, label: Text("Sauce")) {
                        Text("Ketchup").tag(1)
                        Text("Tomato").tag(2)
                        Text("Garlic").tag(3)
                    }
                }
                
                Section {
                    TextField("Name", text: $name)
                    TextField("Delivery Address", text: $address)
                }
                
                Section {
                    Button(action: {
                        print("Submitted")
                    }) {
                        Text("Order send")
                    }
                }
                
            }.navigationBarTitle("Pizza Order")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
