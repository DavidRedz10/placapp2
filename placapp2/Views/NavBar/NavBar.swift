//
//  NavBar.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        TabView {
            Auto(vehicle: Vehicle(image:  Image("image-removebg-preview"), subtitle: "Tiene Pico y Placa", title: "IFR427"))
                .tabItem {
                    Label("Vehiculos.", systemImage: "car.fill")
                }
            Auto(vehicle: Vehicle(image: Image("Placeholder"), subtitle: "Subtitle", title: "Title"))
                .tabItem {
                    Label("Agregar", systemImage: "plus.circle.fill")
                }
            Auto(vehicle: Vehicle(image: Image("Placeholder"), subtitle: "Subtitle", title: "Title"))
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
        .accentColor(.white)
    }
}

