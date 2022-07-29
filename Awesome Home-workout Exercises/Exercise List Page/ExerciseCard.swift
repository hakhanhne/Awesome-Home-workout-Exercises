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
        ZStack (alignment: .leading) {
            Color.white
            
            HStack (alignment: .top) {
                AsyncImage(url: exercise.thumbnailUrl) { image in
                    image
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 80, height: 80)
                
                
                VStack (alignment: .leading, spacing: 5){
                    Text(exercise.title)
                        .font(.system(size: 15))
                    
                    HStack {
                        CircularImage(imgUrl: exercise.authorUrl, size: 20.0)
                        
                        Text(exercise.author)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                }
                
            }
            .frame(height: 85, alignment: .topLeading)
            
        }
        
    }
}

struct ExerciseCard_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCard(exercise: exercises[0])
    }
}
