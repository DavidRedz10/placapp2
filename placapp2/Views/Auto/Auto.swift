//
//  Auto.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI

struct Auto: View {
    var vehicle: Vehicle
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 16) {
                    HeaderView(title: "Tus Vehículos")
                    HStack {
                        VStack(spacing: 0) {
                            vehicle.image
                                .resizable(resizingMode: .stretch)
                                .padding(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 32))
                                .scaledToFit()
                                .frame(width: 250, height: 200, alignment: .center)
                            
                            HStack(spacing: 0) {
                                Text(vehicle.title)
                                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                                    .font(.system(.headline, design: .monospaced))
                                    .textCase(.uppercase)
                                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                                    .frame(width: 179, height: 40, alignment: .center)
                                
                                Text(vehicle.subtitle)
                                    .multilineTextAlignment(.leading)
                                    .italic()
                                    .frame(width: 110, height: 50, alignment: .center)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 14, trailing: 0))
                            }
                        }
                    }
                    .background(alignment: .center) {
                        RoundedRectangle(cornerRadius: 27, style: .continuous)
                            .fill(Color(red: 0.8705882352941177, green: 0.615686274509804, blue: 0.615686274509804))
                    }
                    
                    Divider()
                        .frame(maxWidth: .infinity, alignment: .center)
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


struct Previews_Auto_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()    }
}
