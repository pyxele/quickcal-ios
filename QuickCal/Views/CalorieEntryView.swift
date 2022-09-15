//
//  CalorieEntryView.swift
//  QuickCal
//
//  Created by Will Boland on 9/15/22.
//

import SwiftUI

struct CalorieEntryView: View {
    var entry: CalorieEntry

    var body: some View {
        VStack {
            Text(entry.title ?? "")
            Text("\(entry.amount ?? 0)")
            Text("\(entry.timestamp ?? Date())")
        }
    }
}
