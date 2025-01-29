//
//  ContentView.swift
//  idm362-jwt123
//
//  Created by Jervis Thompson on 1/28/25.
//

import SwiftUI

struct ContentView: View {
  
  // Get color scheme from device
  @Environment(\.colorScheme) var colorScheme
  
  // Add action Picker
  @State private var userPicked = 0
  
  var body: some View {
    ZStack() {
      LinearGradient(gradient: Gradient(colors: [
        colorScheme == .dark ? .black : .blue,
        colorScheme == .dark ? .gray : .mint]),
        startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea(edges: .all)
      
      VStack {
        Text("Weather A.I")
          .font(.custom("Futura-Bold", fixedSize: 35))
          .foregroundColor(colorScheme == .dark ? .green : .white)
          .padding()
        VStack{
          Image(systemName: "cloud.sun.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
          Text("57°")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
        }
        Image(systemName: "figure.hiking.circle.fill")
          .renderingMode(.template)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 150, height: 150)
          .foregroundColor(colorScheme == .dark ? .green : .white)
          .symbolEffect(.wiggle.right, options: .repeat(.periodic(5, delay: 1)))
          Text("Go for a hike today?")
          .font(.custom("Futura-medium", fixedSize: 20))
          .foregroundColor(colorScheme == .dark ? .green : .white)
          .padding()
        VStack {
          Picker("Pick", selection: $userPicked) {
//            Text("Yes").tag(0)
//            Text("No").tag(1)
//            Text("Trash").tag(2)
          Image(systemName: "hand.thumbsup").tag(0)
          Image(systemName: "hand.thumbsdown").tag(1)
          Image(systemName: "trash").tag(2)
          }
          .pickerStyle(.segmented)
          .padding()
          Text("Value: \(userPicked)")
        }
        Spacer()
      }
    }
    
    

  } // End body
} // End ContentView

#Preview {
    ContentView()
}
