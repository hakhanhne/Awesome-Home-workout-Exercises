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

/* Struct for card style in detail view */
struct ExerciseCard1: View {
    var exercise: Exercise
    
    var body: some View {
        
        //put exercise information in a VStack with white background
        VStack (alignment: .leading) {
            //thumbnail
            exercise.thumbnail
                .resizable()
                .frame(height: 140)
            
            //title
            Text(exercise.title)
                .font(.system(size: 14))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
            
            //author (image and name)
            HStack {
                CircularImage(img: exercise.author.author_img, size: 28.0)
                
                Text(exercise.author.name)
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                 
                Spacer()
            }
            
        }
        .frame(width: 260, height: 250, alignment: .topLeading)
    }
}

struct ExerciseCard1_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCard1(exercise: exercises[0])
    }
}
