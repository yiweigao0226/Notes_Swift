//
//  Note.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/1/24.
//

import Foundation
import SwiftData
import FirebaseAuth
import FirebaseFirestore

struct Note: Codable, Identifiable {
    let id: String
    let content: String
    let createdDate: TimeInterval
    
    
    init(id: String, content: String, createdDate: TimeInterval) {
        self.id = id
        self.content = content
        self.createdDate = createdDate
    }
    
    
}
