//
//  GenreSection.swift
//  BookList
//
//  Created by tom montgomery on 4/21/23.
//

import SwiftUI

struct GenreSection: View {
    
    var genre: String
    
    var body: some View {
        Text(genre)
    }
}

struct GenreSection_Previews: PreviewProvider {
    static var previews: some View {
        GenreSection(genre: "Action")
    }
}
