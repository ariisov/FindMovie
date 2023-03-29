# FindMovie
The FindMovie App is an iOS application that allows users to search for movies using the The Movie Database (TMDb) API. The app is built with UIKit and written in Swift.

Features

Search for movies using a search bar
Display search results in a UICollectionView
Show movie details by tapping on a cell
Show movie poster, name, year, genre and rating score
How to Use

Clone the repository or download the project files.
Open the project in Xcode.
Build and run the project in a simulator or on a physical device.
Dependencies

This project uses the following third-party libraries:

Alamofire: for networking
SDWebImage: for image downloading and caching
Configuration

Before running the app, you will need to obtain an API key from The Movie Database (TMDb). Follow these steps to get your API key:

Go to the TMDb website and create an account.
Once you have created an account, go to your account settings and click on the API section.
Generate a new API key.
Copy your API key and paste it into the apiKey constant in the ViewController.swift file.
swift
Copy code
private let apiKey = "YOUR_API_KEY_HERE"
Architecture

The app uses a simple Model-View-Controller (MVC) architecture. The ViewController serves as the controller and is responsible for coordinating the app's data and views. The Movie and Genre structs serve as models and represent the data returned by the TMDb API. The MovieCell subclass of UICollectionViewCell serves as the view for the Movie model and is responsible for displaying the movie data.

Credits

This app was created by [Your Name Here] as a sample project for educational purposes. The app uses the TMDb API to retrieve movie data.
