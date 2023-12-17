//
//  ContentView.swift
//  NoteApp_SwiftData
//
//  Created by Khawlah Khalid on 14/12/2023.
//

import SwiftUI
import SwiftData

struct NotesListView: View {
    @Environment(\.modelContext) var context
    @Query var notes: [Note]
    @State var showAddNoteView: Bool = false
    var body: some View {
        NavigationStack{
                List{
                    ForEach(notes){ note in
                        Text(note.title)
                    }
                }
                .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button{
                        showAddNoteView.toggle()
                    }label: {
                       Image(systemName: "square.and.pencil")
                    }
                }
            }
            .sheet(isPresented: $showAddNoteView){
                AddNoteView()
            }
            .navigationTitle("Notes")
        }
    }
    //Challenge yourself - delete function

}

#Preview {
    NotesListView()
}
