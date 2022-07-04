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
            
            RoundedWeatherButton(weather: .sunny,
                                 action: {
                print("Sunny button clicked")
            }, content: {
                Text("Sunny")
            })
            
            RoundedWeatherButton(weather: .rain,
                                 action: {
                print("Rain button clicked")
            }, content: {
                Text("Raining cats and dogs!")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
