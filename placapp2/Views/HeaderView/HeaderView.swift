//
//  HeaderView.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tus Vehiculos")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding()
            Divider()
        }
    }
}

struct Previews_HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()    }
}
