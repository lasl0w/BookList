//
//  ReadingListView.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import Foundation

class ReadingListModel: ObservableObject {
    
    @Published var genres: [String] = []
    
    // Dictionary of books
    @Published var books: [String: [Book]] = [:]
    
    @Published var statuses: [String] = ["Plan to read", "Reading", "On Hold", "Completed"]
    
    init() {
        getGenres()
    }
    
    func getGenres() {
        
    }
}
