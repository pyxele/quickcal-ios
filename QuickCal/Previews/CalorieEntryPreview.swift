//
//  CalorieEntryPreview.swift
//  QuickCal
//
//  Created by Will Boland on 9/15/22.
//

import SwiftUI
import CoreData

struct CalorieEntryView_Previews: PreviewProvider {
    static var previews: some View {
        let context = PersistenceController.preview.container.viewContext
        let entry = try? context.fetch(NSFetchRequest<CalorieEntry>.init(entityName: "CalorieEntry")).first

        CalorieEntryView(entry: entry ?? CalorieEntry())
    }
}
