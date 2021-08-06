//
//  Movie.swift
//  TableList
//
//  Created by evija.vavere on 05/08/2021.
//

import Foundation
struct Movie {
    
    let title: String
    let year: String
    let poster: String
    
    static func createMovie() ->[Movie]{
        var movies: [Movie] = []
        
        let titles = DataManagerTwo.shared.title
        let years = DataManagerTwo.shared.year
        let posters = DataManagerTwo.shared.poster
        
        for index in 0..<titles.count {
            let movie = Movie(title: titles[index], year: years[index], poster: posters[index])
            movies.append(movie)
      
    }
        return movies
    }
}
