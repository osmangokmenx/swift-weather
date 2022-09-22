//
//  LandingView.swift
//  weather
//
//  Created by Osman Gökmen on 21.09.2022.
//

import SwiftUI
import CoreLocationUI

struct LandingView: View {
  @EnvironmentObject var locationManager: LocationManager
 
  var body: some View {
    VStack {
      VStack {
        
        Text("Welcome to the Weather App").bold().font(.title)
        Text("Please share your current location to get the weather in your area").padding()
      }.padding().multilineTextAlignment(.center)
      
      LocationButton(.shareCurrentLocation) {
        locationManager.requestLocation()
      }.cornerRadius(30).symbolVariant(.fill).foregroundColor(.white)
    }.frame(maxWidth: .infinity, maxHeight: .infinity)
    
    
  }
}

struct LandingView_Previews: PreviewProvider {
  static var previews: some View {
    LandingView()
  }
}
