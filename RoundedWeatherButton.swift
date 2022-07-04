//
//  RoundedWeatherButton.swift
//  CustomViewBuilder
//
//  Created by Goutham S on 04/07/22.
//

import SwiftUI

enum WeatherCondition: String {
    case sunny
    case rain
    
    var symbol: String {
        switch self {
        case .sunny:
            return "sun.max"
        case .rain:
            return "cloud.rain"
        }
    }
}

struct RoundedWeatherButton<Content: View>: View {
    private let weather: WeatherCondition
    private let action: () -> Void
    private let content: Content

    init(weather: WeatherCondition,
         action: @escaping () -> Void,
         @ViewBuilder content: () -> Content) {
        self.weather = weather
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        HStack {
            Image(systemName: weather.symbol)
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(.white)
            content
        }
        .font(.footnote)
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: .infinity)
            .foregroundColor(.accentColor))
        .buttonStyle(BorderlessButtonStyle())
        .onTapGesture {
            action()
        }
    }
}
