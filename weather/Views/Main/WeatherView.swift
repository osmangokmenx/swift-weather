//
//  WeatherVİew.swift
//  weather
//
//  Created by Osman Gökmen on 21.09.2022.
//

import SwiftUI

struct WeatherView: View {
  var weather :ResponseBody
  var body: some View {
    VStack {
      VStack(alignment: .leading, spacing: 5) {
        Text("Konya").bold().font(.title)
        Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))").fontWeight(.light)
      }.frame(maxWidth: .infinity, alignment: .leading)
      
      HStack {
        VStack  {
          IconView(icon: weather.weather[0].icon)
          
          Text(weather.weather[0].main).padding(.top, 1)
        }
        Spacer()
        Text("\(weather.main.feels_like.roundDouble())°").font(.system(size: 100)).bold().padding()
        
      }
      AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")) { image in
        image
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 330)
      } placeholder: {
        ProgressView()
      }
      Spacer()
      
      
      VStack {
        Spacer()
        VStack(alignment: .leading, spacing: 20) {
          Text("Weather now")
            .bold()
            .padding(.bottom)
          HStack() {
            WeatherRow(icon:"thermometer", title: "Min temp", value: (weather.main.tempMin.roundDouble() + ("°")))
            Spacer()
            WeatherRow(icon:"thermometer", title: "Max temp", value: (weather.main.tempMax.roundDouble() + ("°")))
          }
          HStack {
            WeatherRow(icon: "wind", title: "Wind speed", value: (weather.wind.speed.roundDouble() + " m/s"))
            Spacer()
            WeatherRow(icon: "humidity", title: "Humidity", value: "\(weather.main.humidity.roundDouble())%")
          }
        }
        .frame(maxWidth: UIScreen.main.bounds.size.width, alignment: .leading)
        .padding()
        .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .background(.white)
        .cornerRadius(20)
        
      }
      
    }.padding().frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
      .preferredColorScheme(.dark)
  }
}

struct WeatherView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView(weather: previewWeather)
  }
}
