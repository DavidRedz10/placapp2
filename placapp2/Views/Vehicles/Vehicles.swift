//
//  Vehicles.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI

struct Vehicles: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Auto(vehicle: Vehicle(image: Image("Placeholder"), subtitle: "Subtitle", title: "Title"))
        }
        .padding()
        .background(Color(red: 0.533, green: 0.541, blue: 0.541, opacity: 0.947))
    }
}

struct Previews_Vehicles_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()    }
}
