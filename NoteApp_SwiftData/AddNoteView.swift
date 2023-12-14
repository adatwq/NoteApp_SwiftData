//
//  AddNoteView.swift
//  NoteApp_SwiftData
//
//  Created by Khawlah Khalid on 14/12/2023.
//

import SwiftUI

struct AddNoteView: View {
    @Environment(\.dismiss) var dismiss
    @State var title: String = ""
    @State var text: String = ""

    var body: some View {
        NavigationStack{
            Form{
                TextField("Title", text: $title)
                TextField("Text", text: $text)
            }
            .navigationTitle("New Note")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save"){
                        
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancle"){
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddNoteView()
}
