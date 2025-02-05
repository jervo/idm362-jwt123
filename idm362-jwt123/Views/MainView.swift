//
//  MainView.swift
//  idm362-jwt123
//
//  Created by Jervis Thompson on 2/4/25.
//

import SwiftUI

// Create a data model
class UserData: ObservableObject {
  @Published var ndx: Int = 0
}

struct MainView: View {
  
  @StateObject var userData = UserData()
  
  var body: some View {
    TabView {
      ContentView()
        .tabItem {
          Label("Home", systemImage: "house.fill")
        }
      
      Text("About Tab - User Picked \(userData.ndx)")
        .tabItem {
          Label("About", systemImage: "info.circle.fill")
        }
      
      Text("Settings Tab  - User Picked \(userData.ndx)")
        .tabItem {
          Label("Settings", systemImage: "gearshape.fill")
        }
    } // End TabView
    .tint(Color("ColorWeatherBG"))
    .environmentObject(userData)
  } // End body
} // MainView

#Preview {
  MainView()
  // Make UserData available
  .environmentObject(UserData())
}
