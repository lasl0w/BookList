//
//  FullView.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import SwiftUI

struct FullView: View {
    
    @EnvironmentObject var readingListModel: ReadingListModel
    
    var body: some View {
        
        NavigationView {
            VStack {
                // Navigates to the add book form
                NavigationLink(destination: AddBook()) {
                 Text("Add Book")
                }
                // Check if list of genres/books exists
                if(readingListModel.genres.count == 0) {
                    Text("No genres/books found")
                }
                else {
                    // Display each genre and all the books associated with the genre
                    List{
                        ForEach(readingListModel.genres, id: \.self) { genre in
                            GenreSection(genre: genre)
                        }
                    }
                }
            }
        }
    }
}

struct FullView_Previews: PreviewProvider {
    static var previews: some View {
        FullView()
            .environmentObject(ReadingListModel())
    }
}
