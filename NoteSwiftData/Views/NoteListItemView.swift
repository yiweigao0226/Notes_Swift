//
//  NoteListItemView.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/7/24.
//

import SwiftUI

struct NoteListItemView: View {
    @StateObject var viewModel = NoteListItemViewViewModel()
    let item: Note
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.content)
                    .font(.body)
            }

            Spacer()
        }
    }
}

#Preview {
    NoteListItemView(item: .init(
        id: "123",
        content: "Get Milk",
        createdDate: Date().timeIntervalSince1970
    ))
}



