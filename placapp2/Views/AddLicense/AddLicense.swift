//
//  AddLicense.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI

struct AddLicense: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom) // Add padding between image and header
            
            VStack(alignment: .leading) {
                HeaderView(title: "Agrega la placa")
                
                VStack {
                    Rectangle()
                                          .foregroundColor(.white)
                                          .cornerRadius(4)
                                          .frame(height: 50)
                                          .overlay(
                                              TextField("XXX-XXX", text: .constant(""))
                                                  .foregroundColor(.white)
                                                  .padding(.leading, 16)
                                          )
                                      
                                      Rectangle()
                                          .foregroundColor(.white)
                                          .cornerRadius(4)
                                          .frame(height: 50)
                                          .overlay(
                                              TextField("Descripcion", text: .constant(""))
                                                  .foregroundColor(.white)
                                                  .padding(.leading, 16)
                                          )
                                          .padding(.top, 20)
                }
                
                Button(action: {
                    // Add your action here
                }) {
                    HStack {
                        Text("Agregar")
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(width: 375)
                    .background(Color.black)
                    .cornerRadius(10)
                }
            }
            .padding(.top, 8) // Adjust top padding of header and content
            
            Spacer() // Fill remaining vertical space
        }
        .padding()
        .background(Color(hue: 1.0, saturation: 0.006, brightness: 0.564))
        .edgesIgnoringSafeArea(.all) // Optional, to extend the background color to the edges of the screen
    }
}

struct Previews_AddVehicles_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()    }
}

