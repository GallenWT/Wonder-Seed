//
//  Item.swift
//  Wonder Seed
//
//  Created by Gallen W T on 28/04/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
