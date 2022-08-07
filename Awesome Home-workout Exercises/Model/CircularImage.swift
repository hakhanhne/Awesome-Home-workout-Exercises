/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 26/07/2022
  Last modified: 06/08/2022
  Acknowledgement: Lecturer's Tutorial
*/
//
//  CircularImage.swift
//  Awesome Home-workout Exercises
//

import SwiftUI

/* Circular Image Model to create circula image based on given url and wanted size */
struct CircularImage: View {
    var imgUrl: URL
    var size: Double
    var body: some View {
        
        //create circular image
        AsyncImage(url: imgUrl) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            ProgressView()
        }
        .frame(width: size, height: size)
        .clipShape(Circle())

    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(imgUrl: exercises[0].author.authorUrl, size: 50)
    }
}
