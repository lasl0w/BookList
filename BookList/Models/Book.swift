//
//  Book.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import Foundation

struct Book: Hashable, Identifiable {
    // ID is the document ID in the Firestore database
    var id: String
    var title: String
    var author: String
    var genre: String
    var status: String
    var pages: Int
    var rating: Int
    
}
