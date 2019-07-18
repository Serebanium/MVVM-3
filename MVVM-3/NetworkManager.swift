//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Сергей Иванов on 18/07/2019.
//  Copyright © 2019 topMob. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    func fetchMovies(complition: ([String]) -> ()) {
        complition(["Movie 1", "Movie 2", "Movie 3"])
    }
}
