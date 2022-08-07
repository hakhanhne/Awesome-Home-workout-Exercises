/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 31/07/2022
  Last modified: 06/08/2022
*/
//
//  Author.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 31/07/2022.
//

import Foundation
import SwiftUI

/* Author Model */
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
