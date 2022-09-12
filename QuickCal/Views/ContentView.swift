//
//  ContentView.swift
//  QuickCal
//
//  Created by Will Boland on 9/11/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \CalorieEntry.timestamp, ascending: true)],
        animation: .default)
    private var calorieEntries: FetchedResults<CalorieEntry>

    var body: some View {
        NavigationView {
            List {
                ForEach(calorieEntries) { entry in
                    NavigationLink(destination: {
                        Text("Entry made at \(entry.timestamp ?? Date(), formatter: caloryEntryFormatter)")
                    }, label: {
                        Text(entry.timestamp ?? Date(), formatter: caloryEntryFormatter)
                    }).accessibilityIdentifier("caloryEntryButton")
                }
                .onDelete(perform: deleteEntry)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addEntry) {
                        Label("Add Entry", systemImage: "plus")
                    }
                }
            }
            Text("Select an entry")
        }
    }

    private func addEntry() {
        withAnimation {
            let newEntry = CalorieEntry(context: viewContext)
            newEntry.timestamp = Date()
            try? viewContext.save()
        }
    }

    private func deleteEntry(offsets: IndexSet) {
        withAnimation {
            offsets.map { calorieEntries[$0] }.forEach(viewContext.delete)
            try? viewContext.save()
        }
    }
}

private let caloryEntryFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()
