//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Pankaj Kumar Rana on 17/11/23.
//

import SwiftUI
struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                cityTextView(cityName: "Mumbai, India")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temprature: 76)
                
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temprature:73)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.dust.fill", temprature:45)

                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temprature:40)

                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.rain.fill", temprature:39)

                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.rain.fill", temprature:42)

                }
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                    buttonView(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 40, height: 40)
            
            Text("\(temprature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
     
    @Binding var isNight : Bool

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue , isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct cityTextView:View {
    var cityName: String
    var body: some View {
        Text("Mumbai, India")
            .font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white)
            .padding()
    }
}
struct MainWeatherStatusView: View {
    
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack{
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            
            Text("\(temprature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
struct buttonView: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50, alignment: .center)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(40)
    }
}
