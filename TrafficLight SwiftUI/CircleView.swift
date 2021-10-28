//
//  CircleView.swift
//  TrafficLight SwiftUI
//
//  Created by Егор on 27.10.2021.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 130, height: 130)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 10)
            .opacity(opacity)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 0.3)
    }
}
