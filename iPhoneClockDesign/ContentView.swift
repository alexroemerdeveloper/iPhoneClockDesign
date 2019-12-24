//
//  ContentView.swift
//  iPhoneClockDesign
//
//  Created by Alexander Römer on 20.12.19.
//  Copyright © 2019 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            ZStack {
                //BG
                RadialGradient(gradient: Gradient(colors: [Color.black, Color.black]), center: .center, startRadius: 5, endRadius: 500)
                    .scaleEffect(1.5)
                // Large circular path
                Circle()
                    .stroke(style: .init(lineWidth: 2, lineCap: .round, lineJoin: .round, dash: [0.5, 16], dashPhase: 1))
                    .frame(maxWidth: 300, maxHeight: 300)
                    .foregroundColor(.white)
                    .opacity(0.5)
                
                large_dots()
                large_dots()
                    .rotationEffect(.degrees(30))
            }
            
            ZStack {
                Rectangle() //minutes
                    .frame(width: 100, height: 2)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(45), anchor: .leading)
                    .offset(x: 16, y: 6)
                Rectangle() // hours
                    .frame(width: 60, height: 2)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(270), anchor: .leading)
                    .offset(x: -10, y: -8)
                
                Rectangle() //orange line
                    .frame(width: 200, height: 1)
                    .foregroundColor(.orange)
                Circle() // bubble left line orange
                    .frame(maxWidth: 10, maxHeight: 10)
                    .foregroundColor(.orange)
                    .offset(x: -100)
                Circle()// bubble right line orange
                    .stroke()
                    .frame(maxWidth: 20, maxHeight: 20)
                    .foregroundColor(.orange)
                    .offset(x: 110)
            }.offset(x: 40)
            
            Circle()
                .frame(maxWidth: 20, maxHeight: 20)
                .foregroundColor(.white)
            //Circle()
            //.frame(maxWidth: 15, maxHeight: 15)
            //.foregroundColor(.black)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct large_dots: View {
    
    var body: some View {
        Group {
            Circle()
                .offset(y: -150)
                .frame(maxWidth: 8, maxHeight: 8)
                .foregroundColor(.white)
                .rotationEffect(.degrees(0))
            Circle()
                .offset(y: -150)
                .frame(maxWidth: 8, maxHeight: 8)
                .foregroundColor(.white)
                .rotationEffect(.degrees(60))
            Circle()
                .offset(y: -150)
                .frame(maxWidth: 8, maxHeight: 8)
                .foregroundColor(.white)
                .rotationEffect(.degrees(120))
            Circle()
                .offset(y: -150)
                .frame(maxWidth: 8, maxHeight: 8)
                .foregroundColor(.white)
                .rotationEffect(.degrees(180))
            Circle()
                .offset(y: -150)
                .frame(maxWidth: 8, maxHeight: 8)
                .foregroundColor(.white)
                .rotationEffect(.degrees(240))
            Circle()
                .offset(y: -150)
                .frame(maxWidth: 8, maxHeight: 8)
                .foregroundColor(.white)
                .rotationEffect(.degrees(300))
        }
    }
}
