//
//  ExerciseDetail.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 26/07/2022.
//

import SwiftUI

struct ExerciseDetail: View {
    var exercise: Exercise
    var body: some View {
        ZStack {
            VStack (alignment: .leading){
                AsyncImage(url: exercise.thumbnailUrl) { image in
                    image
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 230)
                
                Text(exercise.title)
                
                AuthorBar(exercise: exercise)
                Spacer()
                
                
            }
        }
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(exercise: exercises[0])
    }
}
