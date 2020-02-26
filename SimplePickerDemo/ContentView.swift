//
//  ContentView.swift
//  SimplePickerDemo
//
//  Created by shiga on 26/02/20.
//  Copyright © 2020 shiga. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var animals  = ["Kangaroo", "Monkey", "Snake", "Zebra", "Panda", "Hippo","Bull","Elephant","Tiger","Gorilla","Eagle","Gorilla","Lion","Giraffe"]
    
   @State private var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            Form {
            Section {
            Picker(selection: $selectedIndex, label: Text("Favourite Animal")) {
                ForEach(0 ..< animals.count) {
                    Text(self.animals[$0])
                }
            }
            }
            }
            .navigationBarTitle(Text("Wild Animals"))
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
