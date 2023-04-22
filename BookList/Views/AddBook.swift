//
//  AddBook.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import SwiftUI

struct AddBook: View {
    
    @EnvironmentObject var readingListModel: ReadingListModel
    @State var bookTitle: String = ""
    @State var bookAuthor: String = ""
    @State var bookPages: String = ""
    @State var selectedGenre: Int = 0
    @State var selectedStatus: Int = 0
    @State var selectedRating: Int = 0
    
    var body: some View {
        VStack {
            ScrollView() {
                // Text boxes for book title, author, and number of pages
                TextField("Book Title", text: $bookTitle)
                    .padding(.leading, 20)
                    .padding(.bottom, 10)
                TextField("Book Author(s)", text: $bookAuthor)
                    .padding(.leading, 20)
                    .padding(.bottom, 10)
                TextField("Number of Pages", text: $bookPages)
                // filter the input for only numbers
                    .keyboardType(.numberPad)
//                    .onReceive(bookPages)) {
//                        newValue in
//                        let filtered = newValue.filter{ "0123456789".contains($0) }
//                        if filtered != newValue {
//                            self.bookPages = filtered
//                        }
//                    }
            }
        }
    }
}

struct AddBook_Previews: PreviewProvider {
    static var previews: some View {
        AddBook()
    }
}
