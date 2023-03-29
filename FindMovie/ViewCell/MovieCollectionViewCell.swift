//
//  MovieCollectionViewCell.swift
//  FindMovie
//
//  Created by Булат Хатмуллин on 29.03.2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView!
    var nameLabel: UILabel!
    var yearLabel: UILabel!
    var genreLabel: UILabel!
    var ratingLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Create the image view
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height - 30))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        contentView.addSubview(imageView)
        
        // Create the name label
        nameLabel = UILabel(frame: CGRect(x: 0, y: contentView.frame.height - 30, width: contentView.frame.width, height: 15))
        nameLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        nameLabel.textAlignment = .left
        contentView.addSubview(nameLabel)
        
        // Create the year label
        yearLabel = UILabel(frame: CGRect(x: 0, y: contentView.frame.height - 15, width: contentView.frame.width / 2, height: 15))
        yearLabel.font = UIFont.systemFont(ofSize: 10)
        yearLabel.textAlignment = .left
        contentView.addSubview(yearLabel)
        
        // Create the genre label
        genreLabel = UILabel(frame: CGRect(x: contentView.frame.width / 2, y: contentView.frame.height - 15, width: contentView.frame.width / 2, height: 15))
        genreLabel.font = UIFont.systemFont(ofSize: 10)
        genreLabel.textAlignment = .right
        contentView.addSubview(genreLabel)
        
        // Create the rating label
        ratingLabel = UILabel(frame: CGRect(x: contentView.frame.width - 30, y: 0, width: 30, height: 15))
        ratingLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        ratingLabel.textAlignment = .center
        contentView.addSubview(ratingLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

