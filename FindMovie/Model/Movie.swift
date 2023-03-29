//
//  Movie.swift
//  FindMovie
//
//  Created by Булат Хатмуллин on 29.03.2023.
//

import Foundation

struct Movie: Decodable {
    let id: Int
    let title: String
    let overview: String
    let rating: Double
    let posterPath: String?
    let backdropPath: String?
    let releaseDate: String?
    let genreIds: [Int]
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case rating = "vote_average"
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case releaseDate = "release_date"
        case genreIds = "genre_ids"
    }
    
    var year: String? {
        guard let releaseDate = releaseDate else {
            return nil
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        if let date = formatter.date(from: releaseDate) {
            formatter.dateFormat = "yyyy"
            return formatter.string(from: date)
        } else {
            return nil
        }
    }
    
    var posterURL: URL? {
        guard let posterPath = posterPath else {
            return nil
        }
        return URL(string: "https://image.tmdb.org/t/p/w185\(posterPath)")
    }
    
    var backdropURL: URL? {
        guard let backdropPath = backdropPath else {
            return nil
        }
        return URL(string: "https://image.tmdb.org/t/p/w500\(backdropPath)")
    }
    
    var genresString: String {
        let genres = genreIds.compactMap { id in
            Genre.all.first(where: { $0.id == id })?.name
        }
        return genres.joined(separator: ", ")
    }
}
