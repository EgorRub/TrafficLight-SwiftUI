//
//  StartButton.swift
//  TrafficLight SwiftUI
//
//  Created by Егор on 28.10.2021.
//

import SwiftUI

struct StartButton: View {
    var title: String
    let action: () -> Void
    
    var body: some View {
        if #available(iOS 15.0, *) {
            Button(action: action) {
                Text(title)
                    .font(.title)
                    .frame(maxWidth: 130)
                    .foregroundColor(.white)
            }
            .buttonStyle(.bordered)
            .overlay(RoundedRectangle(cornerRadius: 25)
                        .stroke(.white, lineWidth: 5))
            .background(Color.blue)
            .tint(.blue)
            .cornerRadius(25)
        }
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(title: "START", action: {})
    }
}
