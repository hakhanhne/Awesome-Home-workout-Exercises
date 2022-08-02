//
//  Exercise.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 15/07/2022.
//

import Foundation
import SwiftUI


struct Exercise: Identifiable {
    var id = UUID()
    var author: Author
    var title, description: String
    var thumbnail, video: String
    var thumbnailUrl : URL {
        URL(string: thumbnail)!
    }

    var videoUrl : URL {
        URL(string: video)!
    }
    
    var category: [String]
    var publishedDate: String
    
    static func == (exercise1: Exercise, exercise2: Exercise) -> Bool {
        return (exercise1.id == exercise2.id && exercise1.title == exercise2.title)
    }
    
    func isFav() -> Bool {
        for e in favList {
            if self == e {return true}
        }
        return false
    }
    
    func openUrl(url: URL) {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }


}

