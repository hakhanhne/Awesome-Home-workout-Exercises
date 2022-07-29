//
//  AuthorBar.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 29/07/2022.
//

import SwiftUI

struct AuthorBar: View {
    var exercise: Exercise
    var body: some View {
        VStack (alignment: .center, spacing: 15) {
            CircularImage(imgUrl: exercise.authorUrl, size: 120.0)
            
            Text(exercise.author)
                .foregroundColor(Color.gray)
                .font(.system(size: 28))
        }
    }
}

struct AuthorBar_Previews: PreviewProvider {
    static var previews: some View {
        AuthorBar(exercise: exercises[0])
    }
}
