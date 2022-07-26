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
        VStack (alignment: .leading){
            AsyncImage(
                url: exercise.thumbnailUrl,
                content: {image in
                    image.resizable()
                        .frame(height: 230)
                    
                },
                placeholder: {
                    ProgressView()
                })
            Text(exercise.title)
        }
        .padding()
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(exercise: exercises[0])
    }
}
