//
//  BookListApp.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import SwiftUI

@main
struct BookListApp: App {
    var body: some Scene {
        WindowGroup {
            // trigger the EO init() and make available for all child views
            ContentView()
                .environmentObject(ReadingListModel())
        }
    }
}
