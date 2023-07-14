//
//  HeaderView.swift
//  placapp2
//
//  Created by Juan Jose on 14/07/23.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
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

struct Previews_HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Agrega la placa")
    }
}
