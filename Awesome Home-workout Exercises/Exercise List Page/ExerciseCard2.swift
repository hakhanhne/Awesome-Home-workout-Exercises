/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 30/07/2022
  Last modified: 06/08/2022
*/
//
//  ExerciseCard2.swift
//  Awesome Home-workout Exercises
//

import SwiftUI

/* Struct for card style in root view */
struct ExerciseCard2: View {
    var exercise: Exercise
    
    var body: some View {
        
        //put exercise information in a VStack with white background
        VStack (alignment: .leading) {
            //thumbnail
            exercise.thumbnail
                .resizable()
                .frame(height: 160)
            
            //title
            Text(exercise.title)
                .font(.system(size: 16))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
            
            //author (image and name) and icon (for exercise in fav list)
            HStack {
                CircularImage(img: exercise.author.author_img, size: 30.0)
                
                Text(exercise.author.name)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                 
                Spacer()
                
                //check whether the exercise is fav or not, if it is then add the "heart" to the card
                let image = chooseImg()
                
                image
            }
            
        }
        .frame(height: 260, alignment: .topLeading)
        .background(.white)
        
    }
    
    //check whether the exercise is fav or not, if it is then return "heart" image, else nil
    func chooseImg() -> Image? {
        if (exercise.isFav()) {
            return Image("heart33")
        }
        return nil
    }
}

struct ExerciseCard2_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCard2(exercise: exercises[0])
    }
}
