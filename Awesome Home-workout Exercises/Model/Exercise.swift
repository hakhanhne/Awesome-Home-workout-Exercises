/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 15/07/2022
  Last modified: 06/08/2022
*/
//
//  Exercise.swift
//  Awesome Home-workout Exercises
//

import Foundation
import SwiftUI


/* Exercise Model */
struct Exercise: Identifiable {
    var id = UUID()
    var author: Author
    var title, description: String
    var thumbnail_str, video: String

    var videoUrl : URL {
        URL(string: video)!
    }
    
    var category: String
    var publishedDate: String
    
    var thumbnail : Image{
        Image(thumbnail_str)
    }
    
    /* This function checks whether an exercise is in favorite list or not*/
    func isFav() -> Bool {
        for e in favList {
            if self.title == e.title {return true}
        }
        return false
    }
    
    /* This function open the url (for watching video and access author's youtube channel */
    func openUrl(url: URL) {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }


}

