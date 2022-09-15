//
//  CalorieEntryListPreview.swift
//  QuickCal
//
//  Created by Will Boland on 9/15/22.
//

import SwiftUI
import CoreData

struct CalorieEntryListView_Previews: PreviewProvider {
    static var previews: some View {
        let context = PersistenceController.preview.container.viewContext
        CalorieEntryList(context: context)
    }
}
