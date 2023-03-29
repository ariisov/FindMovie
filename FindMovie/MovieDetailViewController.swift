////
////  MovieDetailViewController.swift
////  FindMovie
////
////  Created by Булат Хатмуллин on 29.03.2023.
////
//
//import UIKit
//
//class MovieDetailViewController: UIViewController {
//    
//    var movie: Movie!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Create and configure the views for displaying the movie information
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width * 3 / 4))
//        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
//        view.addSubview(imageView)
//        
//        let nameLabel = UILabel(frame: CGRect(x: 10, y: imageView.frame.maxY + 10, width: view.frame.width - 20, height: 30))
//        nameLabel.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
//        nameLabel.numberOfLines = 0
//        nameLabel.textAlignment = .left
//        view.addSubview(nameLabel)
//        
//        let yearLabel = UILabel(frame: CGRect(x: 10, y: nameLabel.frame.maxY + 5, width: view.frame.width / 2 - 20, height: 20))
//        yearLabel.font = UIFont.systemFont(ofSize: 18)
//        yearLabel.textAlignment = .left
//        view.addSubview(yearLabel)
//        
//        let genreLabel = UILabel(frame: CGRect(x: view.frame.width / 2 + 10, y: nameLabel.frame.maxY + 5, width: view.frame.width / 2 - 20, height: 20))
//        genreLabel.font = UIFont.systemFont(ofSize: 18)
//        genreLabel.textAlignment = .right
//        view.addSubview(genreLabel)
//        
//        let ratingLabel = UILabel(frame: CGRect(x: view.frame.width - 50, y: imageView.frame.maxY + 10, width: 40, height: 30))
//        ratingLabel.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
//        ratingLabel.textAlignment = .center
//        view.addSubview(ratingLabel)
//        
//        let overviewLabel = UILabel(frame: CGRect(x: 10, y: yearLabel.frame.maxY + 10, width: view.frame.width - 20, height: 0))
//        overviewLabel.font = UIFont.systemFont(ofSize: 18)
//        overviewLabel.numberOfLines = 0
//        overviewLabel.textAlignment = .left
//        view.addSubview(overviewLabel)
//        
//        // Load the movie information into the views
//        imageView.af.setImage(withURL: movie.imageURL)
//        nameLabel.text = movie.name
//        yearLabel.text = String(movie.year)
//        genreLabel.text = movie.genre
//        ratingLabel.text = String(movie.rating)
//        overviewLabel.text = movie.overview
//        overviewLabel.sizeToFit()
//    }
//    
//    init(movie: Movie) {
//        super.init(nibName: nil, bundle: nil)
//        self.movie = movie
//        self.title = movie.name
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
