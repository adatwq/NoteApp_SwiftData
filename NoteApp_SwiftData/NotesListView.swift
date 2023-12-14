//
//  ContentView.swift
//  NoteApp_SwiftData
//
//  Created by Khawlah Khalid on 14/12/2023.
//

import SwiftUI

struct NotesListView: View {
    @State var showAddNoteView: Bool = false
    var body: some View {
        NavigationStack{
                List{
                    ForEach(0..<10, id: \.self){ i in
                        Text("Note")
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
}

#Preview {
    NotesListView()
}
