//
//  CalorieModel.swift
//  QuickCal
//
//  Created by Will Boland on 9/11/22.
//

import Foundation

struct CalorieModel {
    private(set) var name: String
    private(set) var amount: Int

    init(name: String, amount: Int) {
        self.name = name
        self.amount = amount
    }
}
