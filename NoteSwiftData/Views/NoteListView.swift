//
//  NoteListView.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/1/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct NoteListView: View {
    @StateObject var viewModel: NoteListViewViewModel
    @FirestoreQuery var items: [Note]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/notes"
        )
        self._viewModel = StateObject(
            wrappedValue: NoteListViewViewModel(userId: userId)
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    NoteListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Note List")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                newItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

//#Preview {
//    NoteListView(userId: "SPiG1fQjrpb50yoh7p43ylkASKk1")
//}
