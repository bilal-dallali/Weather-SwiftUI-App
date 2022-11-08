//
//  ContentView.swift
//  Weather-App
//
//  Created by Bilal Dallali on 21/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .leading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Paris, France")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    Text("20°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40.0)
                
                
                
                HStack(spacing: 35) {
                    WeatherDayView(dayOfWeek: "JEU", imageName: "cloud.sun.fill", temperature: 20)
                    WeatherDayView(dayOfWeek: "VEN", imageName: "cloud.bolt.rain.fill", temperature: 13)
                    WeatherDayView(dayOfWeek: "SAM", imageName: "cloud.bolt.fill", temperature: 12)
                    WeatherDayView(dayOfWeek: "DIM", imageName: "cloud.sun.rain.fill", temperature: 18)
                    WeatherDayView(dayOfWeek: "LUN", imageName: "wind", temperature: 9)
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change day time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(5.0)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
