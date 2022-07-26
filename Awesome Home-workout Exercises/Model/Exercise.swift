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
    var thumbnail, video: String
    var thumbnailUrl : URL {
        URL(string: thumbnail)!
    }

    var videoUrl : URL {
        URL(string: video)!
    }
    var category: [String]
//    var length: Int
//    var views: UInt32
//    var publishedDate: String
    
//    init(title: String, author: String, description: String, thumbnail: String, video: String, category: [String]) {
//        self.title = title
//        self.thumbnail = URL(string: thumbnail)!
//        self.video = URL(string: video)!
//        self.author = author
//        self.category = category
//        self.description = description
//    }

}

//extension Exercise {
//    static let favList: [Exercise] =
//    [
//        Exercise(title: "15 MIN ABS + WEIGHT, Circuit Style, Weight Lifting inspired, for extra strong abs I Pamela Reif", author: "Pamela Reif", description: "▸ I burned about 60kcal in those 10min. Depending on your height, weight and fitness level, it may differ from 50-100kcal. ", thumbnail: "https://img.youtube.com/vi/btCBYtUPEVU/hqdefault.jpg", video: "https://youtu.be/btCBYtUPEVU", category: ["Abs"])
//    ]
//}
