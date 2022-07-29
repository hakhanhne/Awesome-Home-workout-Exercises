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
    var title, author, description: String
    var thumbnail, video, authorImg: String
    var thumbnailUrl : URL {
        URL(string: thumbnail)!
    }

    var videoUrl : URL {
        URL(string: video)!
    }
    
    var authorUrl : URL {
        URL(string: authorImg)!
    }
    
    var category: [String]
//    var length: Int
//    var views: UInt32
    var publishedDate: String

    
//    init(title: String, author: String, description: String, thumbnail: String, video: String, category: [String]) {
//        self.title = title
//        self.thumbnail = URL(string: thumbnail)!
//        self.video = URL(string: video)!
//        self.author = author
//        self.category = category
//        self.description = description
//    }

    
}

