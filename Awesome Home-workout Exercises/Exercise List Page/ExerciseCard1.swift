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
            AsyncImage(url: exercise.thumbnailUrl) { image in
                image
                    .resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 150)
            
            //title
            Text(exercise.title)
                .font(.system(size: 15))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
            
            //author (image and name)
            HStack {
                CircularImage(imgUrl: exercise.author.authorUrl, size: 30.0)
                
                Text(exercise.author.name)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                 
                Spacer()
            }
            
        }
        .frame(width: 260, height: 260, alignment: .topLeading)
    }
}

struct ExerciseCard1_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCard1(exercise: exercises[0])
    }
}
