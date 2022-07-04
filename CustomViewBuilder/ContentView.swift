//
//  ContentView.swift
//  CustomViewBuilder
//
//  Created by Goutham S on 04/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Button(action: {
                print("Button is clicked")
            }, label: {
                Text("Button")
            })
            
            RoundedButton(action: {
                print("Rounded button is clicked")
            }, label: {
                Text("Rounded button with view builder")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
