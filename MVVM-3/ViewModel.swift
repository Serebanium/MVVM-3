//
//  ViewModel.swift
//  MVVM-3
//
//  Created by Сергей Иванов on 18/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

class ViewModel: NSObject {
    
    private var movies: [String]?
    
    @IBOutlet weak var NetworkManager: NetworkManager!
    
    func fetchMovies(complition: @escaping() -> ()) {
        NetworkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            complition()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return "" }
        return movies[indexPath.row]
    }
}
