//
//  RoundedButton.swift
//  CustomViewBuilder
//
//  Created by Goutham S on 04/07/22.
//

import SwiftUI

struct RoundedButton<Label: View>: View {
    private let action: () -> Void
    private let label: Label
    
    init(action: @escaping () -> Void,
         @ViewBuilder label: () -> Label) { // @ViewBuilder is used because label is the one we are going to build
        self.action = action
        self.label = label()
    }
    
    var body: some View {
        label
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
