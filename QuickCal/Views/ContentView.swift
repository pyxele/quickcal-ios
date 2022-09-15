//
//  ContentView.swift
//  QuickCal
//
//  Created by Will Boland on 9/11/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        NavigationView {
            CalorieEntryList(context: viewContext)
            Text("Select an entry")
        }
    }
}
