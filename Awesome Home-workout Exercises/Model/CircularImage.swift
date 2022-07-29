//
//  CircularImage.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 29/07/2022.
//

import SwiftUI

struct CircularImage: View {
    var imgUrl: URL
    var size: Double
    var body: some View {
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
        CircularImage(imgUrl: exercises[0].authorUrl, size: 50)
    }
}
