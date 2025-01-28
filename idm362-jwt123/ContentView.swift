//
//  ContentView.swift
//  idm362-jwt123
//
//  Created by Jervis Thompson on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        MapView()
          .frame(height: 300)
        
        CircleImage()
          .offset(y: -100)
          .padding(.bottom, -130)
        
        VStack(alignment: .leading) {
          Text("JERVO - DaLingoKid!")
            .font(.title)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.mint)
            .padding()
        }
        .padding()
        
        // Push VStack to top of device
        Spacer()
      }
    } // End body
} // End ContentView

#Preview {
    ContentView()
}
