//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Asad on 3/18/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManger:
        LocationManager
    
    var body: some View {
        
        VStack{
            
            VStack(spacing: 20) {
                
                Text("Weather App")
                    .bold().font(.title)
                Text("🌦️")
                    .bold().font(.title)
                
                
            }
            
            .multilineTextAlignment(.center)
            
            
            LocationButton(.shareCurrentLocation) {
                locationManger.requestlocation()
            }
            
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            .padding(.bottom, 300)
            
            VStack{
            
                HStack{
                    
                    Link(destination: URL(string: "https://asadzafar101.github.io/asadzafar101.github.io-termsandconditions/")!, label: {
                        Label(
                            title: {Text("Terms and Condition")}, icon: {Image(systemName: "checklist.checked") }
                        )
                        
                        
                        .frame(width: 210,
                               height: 35,
                               alignment: .center)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        
                        
                    })
                    
                    
                }
                HStack{
                    Link(destination: URL(string: "https://asadzafar101.github.io/asadzafar101.github.io-about/")!, label: {
                        Label(
                            title: {Text("About Us")}, icon: {Image(systemName: "person.3.fill") }
                        )
                        
                        
                        .frame(width: 210,
                               height: 35,
                               alignment: .center)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        
                    })
                    
                }
                HStack{
                    Link(destination: URL(string: "https://openweathermap.org/")!, label: {
                        Label(
                            title: {Text("OpenWeather")}, icon: {Image(systemName: "sun.max.fill") }
                        )
                        
                        
                        .frame(width: 210,
                               height: 35,
                               alignment: .center)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        
                        
                    })
                    
                }
                
            }
            .padding(20)
            .clipShape(Capsule())

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
