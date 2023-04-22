//
//  FullView.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import SwiftUI

struct FullView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                // Navigates to the add book form
                NavigationLink(destination: AddBook()) {
                 Text("Add Book")
                }
            }
        }
    }
}

struct FullView_Previews: PreviewProvider {
    static var previews: some View {
        FullView()
    }
}
