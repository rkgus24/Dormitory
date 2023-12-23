//
//  Item.swift
//  Domitory
//
//  Created by 노가현 on 12/23/23.
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
