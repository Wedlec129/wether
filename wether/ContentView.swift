//
//  ContentView.swift
//  wether
//
//  Created by Борух Соколов on 11.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                
                Text("Moscow")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                // .padding(.bottom,100)
                VStack(spacing: 15){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width: 180,height: 180)
                    
                    Text("21°C")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                HStack(spacing: 20){
                    
                    
               
                    WeatherDayView(  dayOfWeek: "THU",
                                     imageName: "cloud.sun.rain.fill",
                                     temperatur: 18              )
                    WeatherDayView(  dayOfWeek: "WEN",
                                     imageName: "cloud.heavyrain.fill",
                                     temperatur: 12              )
                    WeatherDayView(  dayOfWeek: "THU",
                                     imageName: "cloud.sun.fill",
                                     temperatur: 19              )
                    WeatherDayView(  dayOfWeek: "FRI",
                                     imageName: "cloud.snow.fill",
                                     temperatur: 4              )
                    WeatherDayView(  dayOfWeek: "SAT",
                                     imageName: "sun.max.fill",
                                     temperatur: 23               )
                   
                    
                    
                    
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
    
    var dayOfWeek:String
    var imageName:String
    var temperatur:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width: 40,height: 40)
            Text("\(temperatur)")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
