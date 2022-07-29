//
//  ExerciseCard.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 26/07/2022.
//

import SwiftUI

struct ExerciseCard: View {
    var exercise: Exercise
    var body: some View {
        ZStack {
            Color.white
            
            HStack (alignment: .center) {
                AsyncImage(url: exercise.thumbnailUrl) { image in
                    image
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 80, height: 80)
                
//                AsyncImage(
//                    url: exercise.thumbnailUrl,
//                    content: {image in
//                        image.resizable()
//                            .frame(width: 80, height: 80)
//
//                    },
//                    placeholder: {
//                        ProgressView()
//                    })
                VStack (alignment: .leading, spacing: 5){
                    Text(exercise.title)
                        .font(.system(size: 18))
                    Text(exercise.author)
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                        
                }
                
//                Text(">")
//                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                
            }
            
        }
        
    }
}

struct ExerciseCard_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCard(exercise: exercises[0])
    }
}
