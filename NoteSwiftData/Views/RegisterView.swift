//
//  RegisterView.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/15/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Register",
                           subtitle: "Start organizing notes",
                           angle: -15,
                           background: .blue)
                
                // Register form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Create Account",
                        background: .green
                    ) {
                        viewModel.register()
                    }
                    .padding()
                }
                .offset(y: -50)
                    
                Spacer()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
