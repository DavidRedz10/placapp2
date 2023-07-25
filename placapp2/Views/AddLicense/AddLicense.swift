//
//  AddLicense.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI
import CoreData

struct AddLicense: View {
       @Environment(\.managedObjectContext) private var viewContext
       
       @State private var inputNumber = ""
       @State private var inputRemarks = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 40)
            
            VStack(alignment: .leading) {
                HeaderView(title: "Agrega la placa")
                
                VStack {
                    Rectangle()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.793))
                        .cornerRadius(4)
                        .frame(height: 50)
                        .overlay(
                            TextField("XXX-XXX", text: $inputNumber)
                                .foregroundColor(.black) .padding(.leading, 16)
                        )
                        .padding([.top, .leading, .trailing], 20)
                    
                    Rectangle()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.793))
                        .cornerRadius(4)
                        .frame(height: 50)
                        .overlay(
                            TextField("Descripcion", text: $inputRemarks)
                                .foregroundColor(.black)
                                .padding(.leading, 16)
                        )
                        .padding(.all, 20)
                }
                
                Button(action: {
                                  saveLicense()
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
            .padding(.top, 8)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
    
    private func saveLicense() {
        
           let newLicense = License(context: viewContext)
           
           newLicense.plate = inputNumber
           newLicense.remarks = inputRemarks
           
           do {
               try viewContext.save()
           if viewContext.hasChanges {
               print("Context has pending changes.")
               let insertedObjects = viewContext.insertedObjects.compactMap { $0 as? License }
               for license in insertedObjects {
                   print("New License: \(license)")
               }
           }
       } catch {
               print("Error saving license: \(error.localizedDescription)")
           }
           
           inputNumber = ""
           inputRemarks = ""
       }
}

struct Previews_AddVehicles_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()    }
}

