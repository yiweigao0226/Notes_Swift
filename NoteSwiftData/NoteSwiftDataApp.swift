//
//  NoteSwiftDataApp.swift
//  NoteSwiftData
//
//  Created by yiwei gao on 2/1/24.
//

import FirebaseCore
import SwiftUI

@main
struct NoteSwiftDataApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}



