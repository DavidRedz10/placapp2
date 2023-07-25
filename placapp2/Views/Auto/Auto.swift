//
//  Auto.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI
import CoreData

struct Auto: View {
    
    var vehicle: Vehicle
    
      @Environment(\.managedObjectContext) private var viewContext
      @FetchRequest(
          sortDescriptors: [NSSortDescriptor(keyPath: \License.plate, ascending: true)],
          animation: .default
      ) private var licenses: FetchedResults<License>
    
    var body: some View {
        VStack(alignment: .leading) {
            HeaderView(title: "Tus Vehículos")
                .padding()
            ScrollView(.vertical, showsIndicators: true) {
                Spacer()
                VStack(spacing: 16) {
                    HStack {
                        VStack(spacing: 16) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                ForEach(licenses, id: \.self) { license in
                                    HStack(spacing: 16) {
                                        Product_Cell( subtitle: (license.plate ?? ""), thumbnail: Image("carro"), title: "Picanto")
                                        
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
                                }
                            }
                        }
                    }
                    
                }
            }
        }
        
        
    }
    
    
    
    struct Previews_Auto_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()    }
    }
    
    
    struct Product_Cell: View {
        var oldPrice = "$999"
        var subtitle = "Subtitle"
        var thumbnail = Image("carro")
        var title = "Title"
        
        var body: some View {
            VStack(spacing: 6) {
                ZStack(alignment: .topTrailing) {
                    Square_Image(image: thumbnail)
                        .mask(alignment: .center) {
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .circular
                            )
                            .fill(Color(uiColor: .systemGray))
                        }
                    // Condition: Conditional
                    if false {
                        Circle_Symbol()
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    }
                }
                VStack(alignment: .leading, spacing: 0) {
                    Text(title)
                        .font(.system(.subheadline, design: .default))
                        .bold()
                    Text(subtitle)
                        .font(.system(.subheadline, design: .default))
                        .foregroundColor(Color(uiColor: .systemBlue))
                    
                    HStack {
                        
                        Spacer()
                        // Condition: Conditional
                        if false {
                            ZStack {
                                Text(oldPrice)
                                    .font(.system(.subheadline, design: .default))
                                    .foregroundColor(Color(uiColor: .tertiaryLabel))
                                
                                Rectangle()
                                    .fill(Color(uiColor: .tertiaryLabel))
                                    .frame(
                                        height: 1,
                                        alignment: .center
                                    )
                                    .layoutPriority(-1)
                            }
                            
                            
                        }
                    }
                }
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
            }
        }
    }
    
    
    struct Square_Image: View {
        var image = Image("Placeholder")
        var validation = "Tiene pico y placa"
        
        var body: some View {
            Rectangle()
                .fill(Color(hue: 0.269, saturation: 0.113, brightness: 0.599))
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .overlay(alignment: .center) {
                    image
                        .resizable()
                        .scaledToFit()
                        .padding(7)
                    Text(validation)
                        .foregroundColor(.white)
                        .padding(.top, 200.0)
                }
                .mask(alignment: .center) {
                    Rectangle()
                        .fill(Color(uiColor: .systemGray))
                        .cornerRadius(0)
                    
                }
            
            
        }
    }
    
    
    struct Circle_Symbol: View {
        var body: some View {
            Circle()
                .fill(Color(uiColor: .systemBlue))
                .frame(
                    width: 24,
                    height: 24,
                    alignment: .center
                )
            
            Image(systemName: "percent")
                .foregroundColor(Color(uiColor: .white))
                .font(.system(size: 12.0, weight: .bold, design: .default))
        }
    }
}
