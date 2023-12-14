//
//  Note.swift
//  NoteApp_SwiftData
//
//  Created by Khawlah Khalid on 14/12/2023.
//

import SwiftData
@Model
final class Note{
    var title: String
    var text: String
    
    init(title: String, text: String) {
        self.title = title
        self.text = text
    }
}
