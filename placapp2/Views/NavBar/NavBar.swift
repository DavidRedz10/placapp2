//
//  NavBar.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI

struct NavBar: View {
    init() {
        // Change the appearance of the UITabBar
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        TabView {
            Auto(vehicle: Vehicle(image: Image("image-removebg-preview"), subtitle: "Tiene Pico y Placa", title: "IFR427"))
                .tabItem {
                    Label("Vehiculos.", systemImage: "car.fill")
                }
            AddLicense()
                .tabItem {
                    Label("Agregar", systemImage: "plus.circle.fill")
                }
            Auto(vehicle: Vehicle(image: Image("Placeholder"), subtitle: "Subtitle", title: "Title"))
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
        .background(Color(hue: 1.0, saturation: 0.006, brightness: 0.564))
        .accentColor(Color(UIColor(red: 25/255, green: 29/255, blue: 33/255, alpha: 1.0)))
        .onAppear {
            let unselectedColor = UIColor(red: 172/255, green: 184/255, blue: 194/255, alpha: 1.0)
            UITabBar.appearance().unselectedItemTintColor = unselectedColor
        }
  
    }
}
