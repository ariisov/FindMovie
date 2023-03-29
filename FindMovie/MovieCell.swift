//
//  MovieCell.swift
//  FindMovie
//
//  Created by Булат Хатмуллин on 29.03.2023.
//

import UIKit
import Alamofire

class MovieCell: UICollectionViewCell {
    static let reuseIdentifier = "MovieCell"
    
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let yearLabel = UILabel()
    let genreLabel = UILabel()
    let ratingLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .white
        layer.cornerRadius = 8
        layer.masksToBounds = true
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.numberOfLines = 2
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        
        yearLabel.font = UIFont.systemFont(ofSize: 16)
        yearLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(yearLabel)
        
        genreLabel.font = UIFont.systemFont(ofSize: 16)
        genreLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(genreLabel)
        
        ratingLabel.font = UIFont.boldSystemFont(ofSize: 20)
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ratingLabel)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            
            titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            
            yearLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            yearLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            
            genreLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            genreLabel.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 8),
            
            ratingLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            ratingLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    func configure(with movie: Movie) {
        titleLabel.text = movie.title
        yearLabel.text = movie.year
        ratingLabel.text = "\(movie.rating)"
        genreLabel.text = movie.genresString
        
        guard let posterURL = movie.posterURL else {
            imageView.image = nil
            return
        }
        
        AF.request(posterURL).response { response in
            guard let data = response.data, let image = UIImage(data: data) else {
                self.imageView.image = nil
                return
            }
            
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }

}
