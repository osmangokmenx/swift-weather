//
//  IconView.swift
//  weather
//
//  Created by Osman Gökmen on 21.09.2022.
//

import SwiftUI
struct IconView: View {
    
var icon: String?

var body: some View {
  Image(systemName: weatherIcons[icon ?? "loading"] ?? "goforward")
    .font(.system(size: 40))
    .foregroundColor(.white)
  
}

let weatherIcons = [
  "01d": "sun.max.fill",
  "02d": "cloud.sun.fill",
  "03d": "cloud.fill",
  "04d": "smoke.fill",
  "09d": "cloud.drizzle.fill",
  "10d": "cloud.rain.fill",
  "11d": "cloud.bolt.rain.fill",
  "13d": "snow",
  "50d": "cloud.fog.fill",
  "01n": "moon.stars.fill",
  "02n": "cloud.moon.fill",
  "03n": "cloud.fill",
  "04n": "smoke.fill",
  "09n": "cloud.drizzle.fill",
  "10n": "cloud.rain.fill",
  "11n": "cloud.bolt.rain.fill",
  "13n": "snow",
  "50n": "cloud.fog.fill",
  "loading" : "goforward",
  "wind" : "wind",
  "sunrise" : "sunrise.fill",
  "sunset" : "sunset.fill",
]

}
