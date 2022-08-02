//
//  ExerciseCard2.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 30/07/2022.
//

import SwiftUI

struct ExerciseCard2: View {
    var exercise: Exercise
    var body: some View {
        ZStack (alignment: .leading) {            
            VStack (alignment: .leading) {
                AsyncImage(url: exercise.thumbnailUrl) { image in
                    image
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 160)
                
                Text(exercise.title)
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    CircularImage(imgUrl: exercise.author.authorUrl, size: 30.0)
                    
                    Text(exercise.author.name)
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                     
                    Spacer()
                    
                    let image = chooseImg()
                    
                    image
                    
//                    Button(action: {
//
//                        if (exercise.isFav()) {
//                            image = Image("home-icon")
//                        }
//                        else {
//                            image = Image("heart-icon")
//                        }
//                    }) {
//                        image
//                    }


                    
                }
                
            }
            
        }
        .frame(height: 260, alignment: .topLeading)
        
    }
    
    func chooseImg() -> Image? {
        if (self.exercise.isFav()) {
            return Image("heart35")
        }
        return nil
    }
}

struct ExerciseCard2_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCard2(exercise: exercises[0])
    }
}
