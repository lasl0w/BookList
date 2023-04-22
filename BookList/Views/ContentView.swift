//
//  ContentView.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    
    // I declare my view wants to use the EO!
    @EnvironmentObject var readingListModel: ReadingListModel
    
    var body: some View {
        
        TabView {
            FullView()
                .tabItem {
                    Image(systemName: "book")
                    Text("All Books")
                }
            GenreView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("Genres")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
