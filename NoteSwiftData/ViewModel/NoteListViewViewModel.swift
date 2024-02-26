//
//  NoteListViewViewModel.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/15/24.
//

import FirebaseFirestore
import Foundation

// ViewModel for list of items view
// Primary tab
class NoteListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("notes")
            .document(id)
            .delete()
    }
}
