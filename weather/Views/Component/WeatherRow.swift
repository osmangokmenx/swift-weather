//
//  WeatherRow.swift
//  weather
//
//  Created by Osman Gökmen on 22.09.2022.
//

import SwiftUI

struct WeatherRow: View {
  let icon: String
  let title: String
  let value: String
  var body: some View {
    HStack( spacing: 10) {
        Image(systemName: icon)
          .font(.system(size: 20))
          .frame(width: 20, height: 20)
          .padding()
          .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
          .cornerRadius(50)
      
      VStack(spacing: 10) {
        Text(title)
          .fontWeight(.light)
        
        Text(value)
          .bold()
          .font(.title)
      }
    }.frame(minWidth: 150, alignment: .leading)
      .padding(0)
  }
}

struct WeatherRow_Previews: PreviewProvider {
  static var previews: some View {
    WeatherRow(icon:"thermometer", title: "Min temp", value: "10°")
  }
}
