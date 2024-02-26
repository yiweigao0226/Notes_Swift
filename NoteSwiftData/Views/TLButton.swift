//
//  TLButton.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/2/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let textColor: Color
    let action: () -> Void
    
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(textColor)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Value",
             background: .pink,
             textColor: .white
    ) {
        // Action
    }
}
