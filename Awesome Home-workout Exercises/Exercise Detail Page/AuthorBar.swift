/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 29/07/2022
  Last modified: 05/08/2022
*/
//
//  AuthorBar.swift
//  Awesome Home-workout Exercises
//

import SwiftUI

/* Display auhtor infomation in exercise detail view page */
struct AuthorBar: View {
    var exercise: Exercise
    
    var body: some View {
        HStack (alignment: .center) {
            
            //author image and name
            VStack (alignment: .leading, spacing: 15) {
                CircularImage(imgUrl: exercise.author.authorUrl, size: 118.0)
                
                Text(exercise.author.name)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            //author's youtube channel
            Button(action: {
                exercise.openUrl(url: exercise.author.youtubeUrl) //open youtube channel
            }) {
                HStack{
                    Image("youtube30")
                    Text("Youtube channel")
                        .fontWeight(.semibold)
                        .font(.system(size: 17))
                }
                .padding([.leading, .trailing], 14)
                .padding([.top, .bottom], 2)
                .frame(minHeight: 42)
            }
            .buttonStyle(.plain)
            .background(Color(UIColor(named: "CutiePink")!))
            .foregroundColor(.white)
        }
    }
}

struct AuthorBar_Previews: PreviewProvider {
    static var previews: some View {
        AuthorBar(exercise: exercises[0])
    }
}
