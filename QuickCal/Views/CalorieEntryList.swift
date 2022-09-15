//
//  CalorieEntryList.swift
//  QuickCal
//
//  Created by Will Boland on 9/15/22.
//

import SwiftUI
import CoreData

struct CalorieEntryList: View {
    let context: NSManagedObjectContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \CalorieEntry.timestamp, ascending: true)],
        animation: .default)
    private var calorieEntries: FetchedResults<CalorieEntry>

    var body: some View {
        List {
            ForEach(calorieEntries) { entry in
                NavigationLink(destination: CalorieEntryView(entry: entry), label: {
                    Text(entry.timestamp ?? Date(), formatter: calorieEntryFormatter)
                }).accessibilityIdentifier("calorieEntryButton")
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
    }

    private func addEntry() {
        withAnimation {
            let newEntry = CalorieEntry(context: context)
            newEntry.timestamp = Date()
            try? context.save()
        }
    }

    private func deleteEntry(offsets: IndexSet) {
        withAnimation {
            offsets.map { calorieEntries[$0] }.forEach(context.delete)
            try? context.save()
        }
    }

    private let calorieEntryFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()
}
