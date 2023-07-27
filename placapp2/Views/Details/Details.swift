

//
//  Details.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct Details: View {
    var body: some View {
        VStack {
            Image("planning")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 356, height: 480)
                .clipped()
                .overlay(alignment: .topLeading) {
                    VStack(alignment: .leading, spacing: 11) {
                        RoundedRectangle(cornerRadius: 17, style: .continuous)
                            .fill(.clear)
                            .frame(width: 72, height: 72)
                            .clipped()
                            .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.12), radius: 8, x: 0, y: 4)
                            .overlay {
                                Image(systemName: "car")
                                    .imageScale(.large)
                                    .font(.system(size: 31, weight: .regular, design: .default))
                            }
                        VStack(alignment: .leading, spacing: 1) {
                            Text("Honda CR-V")
                                .font(.system(.largeTitle, weight: .medium))
                            Text("BMY-135 ")
                                .font(.system(.headline, weight: .medium))
                                .frame(width: 190, alignment: .leading)
                                .clipped()
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .padding()
                    .padding(.top, 42)
                }
                .overlay(alignment: .bottom) {
                    Group {
                        
                    }
                }
                .mask {
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                }
                .padding()
                .padding(.top, 40)
                .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.15), radius: 10, x: 0, y: 14)
            VStack(spacing: 10) {
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "pencil.and.ellipsis.rectangle")
                            .imageScale(.medium)
                        Text("Editar vehiculo")
                    }
                    .font(.system(.body, weight: .medium))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .foregroundColor(.orange)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear.opacity(0.25), lineWidth: 0)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.yellow.opacity(0.15)))
                    }
                HStack(alignment: .firstTextBaseline) {
                    Image(systemName: "delete.right")
                        .imageScale(.medium)
                    Text("Eliminar vehiculo")
                }
                .font(.system(.body, weight: .medium))
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .clipped()
                .foregroundColor(.orange)
                .background {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(.clear.opacity(0.25), lineWidth: 0)
                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.yellow.opacity(0.15)))
                }
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

