//
//  ContentView.swift
//  placapp2
//
//  Created by David Rojas on 13/07/23.
//


import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        VStack(alignment: .leading) {
            NavBar()
                .background(Color.white).environment(\.managedObjectContext, viewContext)
        }
        .padding()
        .background(Color(red: 0.537, green: 0.541, blue: 0.541, opacity: 0.947))
    }
}
