//
//  Author.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 31/07/2022.
//

import Foundation
import SwiftUI


struct Author: Identifiable {
    var id = UUID()
    var name, authorImg, youtube: String
    var authorUrl : URL {
        URL(string: authorImg)!
    }
    var youtubeUrl : URL {
        URL(string: youtube)!
    }
}
