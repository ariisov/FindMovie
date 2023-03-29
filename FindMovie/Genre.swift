//
//  Genre.swift
//  FindMovie
//
//  Created by Булат Хатмуллин on 29.03.2023.
//

import Alamofire

struct Genre: Decodable {
    let id: Int
    let name: String
    
    static var all: [Genre] = []
    
    static func fetchAllGenres(completion: @escaping () -> Void) {
        let url = URL(string: "https://api.themoviedb.org/3/genre/movie/list?api_key=       &language=en-US")!
        
        AF.request(url).responseDecodable(of: GenreListResponse.self) { response in
            switch response.result {
            case .success(let genreListResponse):
                self.all = genreListResponse.genres
                completion()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct GenreListResponse: Decodable {
    let genres: [Genre]
}
