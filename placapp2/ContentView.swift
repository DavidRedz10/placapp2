//
//  ContentView.swift
//  placapp2
//
//  Created by David Rojas on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            NavBar()
        }
        .padding()
        .background(Color(red: 0.537, green: 0.541, blue: 0.541, opacity: 0.947))
         //
    }
}




//Navigation bar
struct NavBar: View{
    var body: some View{
        TabView {
             Vehiculos()
                 .tabItem {
                     Label("Vehiculos.", systemImage: "car.fill")
                 }
             Vehiculos()
                 .tabItem {
                     Label("Agregar", systemImage: "plus.circle.fill")
                 }

             Vehiculos()
                 .tabItem {
                     Label("Profile", systemImage: "person.circle")
                 }
        }
        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
    }
}





struct Auto: View {
    
    var image = Image("Placeholder")
    var subtitle = "Subtitle"
    var title = "Title"

    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 16) {
                    HStack {
                        VStack(spacing: 0) {
                            Image("image-removebg-preview")
                                .resizable(resizingMode: .stretch)
                                .padding(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 32))
                                .scaledToFit()
                                .frame(
                                    width: 250,
                                    height: 200,
                                    alignment: .center
                                )

                            HStack(spacing: 0) {
                                Text("H L R - 4 2 7 ")
                                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                                    .font(.system(.headline, design: .monospaced))
                                    .textCase(.uppercase)
                                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                                    .frame(
                                        width: 179,
                                        height: 40,
                                        alignment: .center
                                    )

                                Text("Tiene pico y placa")
                                    .multilineTextAlignment(.leading)
                                    .italic()
                                    .frame(
                                        width: 110,
                                        height: 50,
                                        alignment: .center
                                    )
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 14, trailing: 0))
                            }
                        }
                    }
                    .background(alignment: .center) {
                        RoundedRectangle(
                            cornerRadius: 27,
                            style: .continuous
                        )
                        .fill(Color(red: 0.8705882352941177, green: 0.615686274509804, blue: 0.615686274509804))
                    }

                    Divider()
                    .frame(
                        maxWidth: .infinity,
                        alignment: .center
                    )
                }
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                .navigationTitle("Title")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        .padding()
        .background(Color(hue: 1.0, saturation: 0.006, brightness: 0.564))
    }
}


struct Vehiculos: View {
    var body: some View {
        VStack(alignment: .leading) {
        HeaderView(title: "Tus Vehículos")
        Auto()
        }
        .padding()
        .background(Color(red: 0.533, green: 0.541, blue: 0.541, opacity: 0.947))

    }
}



//Header
struct HeaderView: View {
    var title: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding()
            Divider()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
