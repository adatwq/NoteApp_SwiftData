//
//  NoteApp_SwiftDataApp.swift
//  NoteApp_SwiftData
//
//  Created by Khawlah Khalid on 14/12/2023.
//

import SwiftUI
import SwiftData

@main
struct NoteApp_SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            NotesListView()
                .modelContainer(for: [Note.self])
        }
    }
}
