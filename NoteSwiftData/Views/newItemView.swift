//
//  newItemView.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/6/24.
//

import SwiftUI

struct newItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form {
                // Title
                TextField("Content", text: $viewModel.content)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Button
                TLButton(
                    title: "Save",
                    background: .pink,
                    textColor: .white
                ) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                    }
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    newItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
