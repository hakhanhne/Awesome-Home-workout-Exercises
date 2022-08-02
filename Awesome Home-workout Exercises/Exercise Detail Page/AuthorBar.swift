//
//  AuthorBar.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 29/07/2022.
//

import SwiftUI

struct AuthorBar: View {
    var exercise: Exercise
    @State private var hover = false
    var body: some View {
        HStack (alignment: .center) {
            VStack (alignment: .leading, spacing: 15) {
                CircularImage(imgUrl: exercise.author.authorUrl, size: 120.0)
                
                Text(exercise.author.name)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            Button(action: {
                exercise.openUrl(url: exercise.author.youtubeUrl)
            }) {
                HStack{
                    Image("youtube30")
                    Text("Youtube channel")
                        .fontWeight(.bold)
                }
                .padding([.leading, .trailing], 20)
                .padding([.top, .bottom], 6)
                    
            }
                .buttonStyle(.plain)
                .background(Color(UIColor(named: "CutiePink")!))
                .foregroundColor(.white)
//                .onHover { isHovered in
//                    self.hover = isHovered
//                    DispatchQueue.main.async { //<-- Here
//                        if (self.hover) {
//                            NSCursor.pointingHand.push()
//                        } else {
//                            NSCursor.pop()
//                        }
//                    }
//                }
        }
    }
}

struct AuthorBar_Previews: PreviewProvider {
    static var previews: some View {
        AuthorBar(exercise: exercises[0])
    }
}
