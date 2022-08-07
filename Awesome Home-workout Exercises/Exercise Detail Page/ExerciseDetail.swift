/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 26/07/2022
  Last modified: 05/08/2022
  Acknowledgement:
    StackOverflow
*/
//
//  ExerciseDetail.swift
//  Awesome Home-workout Exercises
//

import SwiftUI

/* Function to convert UIFont to Font (ref: StackOverflow*/
public extension Font {
  init(uiFont: UIFont) {
    self = Font(uiFont as CTFont)
  }
}

struct ExerciseDetail: View {
    
    var exercise: Exercise
    
    @State var fav: Bool  //state var to decide which button to display (add to fav / remove from fav)
    
    //list of relevant exercises with the same category of this exercise
    var relevantExercises: [Exercise] {
        //return exercise with same category
        return exercises.filter{$0.category.localizedStandardContains(exercise.category)}
    }

    var body: some View {
        // button to add exercise to fav list
        let button_add = Button(
            action: {
                favList.append(exercise) //add exercise to fav list
                fav.toggle() //toggle the state
            }) {
            HStack {
                Image("add30")
                Text("Add to Favorite List")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity, minHeight: 38)
        }
        .buttonStyle(.plain)
        .foregroundColor(Color(UIColor(named: "CutiePink")!))
        .border(Color(UIColor(named: "CutiePink")!), width: 2)
        
        
        // button to remove exercise from fav list
        let button_remove = Button(action: {
                if let index = favList.firstIndex(where: {$0.id == exercise.id}) { //find the exercise's index in the fav list to remove it
                    favList.remove(at: index) //remove from fav list
                    fav.toggle() //toggle the state
                }
            }) {
                HStack {
                    Image("remove24")
                    Text("Remove from Favorite List")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                }
                    .frame(maxWidth: .infinity, minHeight: 38)
                    
            }
            .buttonStyle(.plain)
            .foregroundColor(Color(UIColor(named: "CutiePink")!))
            .border(Color(UIColor(named: "CutiePink")!), width: 2)
        

        /* Exercise Information */
        ScrollView {
            VStack (alignment: .leading){
                
                //Display clickable thumbnail to open the exercise on youtube
                Button(action: {
                    exercise.openUrl(url: exercise.videoUrl)
                    
                }, label: {
                    ZStack {
                        //thumbnail 
                        exercise.thumbnail
                            .resizable()
                            .frame(height: 230)
                        
                        //shadow effect
                        Rectangle()
                            .foregroundColor(.black)
                            .opacity(0.3)
                        
                        //play icon
                        Image("play50")
                    }
                })
                
                //other information
                VStack (alignment: .leading, spacing: 36) {
                    VStack(alignment: .leading, spacing: 9) {
                        //title
                        Text(exercise.title)
                            .fontWeight(.semibold)
                        
                        //published date and category
                        Text(exercise.publishedDate + "  |  " + exercise.category)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                        //Place 2 button in a ZStack and toggle its opacity based on the Fav state
                        ZStack {
                            button_add
                                .opacity(fav ? 0 : 1)
                                .disabled(fav ? true : false)
                            button_remove
                                .opacity(fav ? 1 : 0)
                                .disabled(fav ? false : true)
                        }
                        .padding(.top, 10)
                    }
                    
                    //author information
                    AuthorBar(exercise: exercise)
                
                    //exercise's description
                    Text(exercise.description)
                    
                    //Relevant exercises: horizontal scrollview
                    VStack (alignment: .leading, spacing: 10) {
                        //section title
                        let customFont : UIFont = UIFont(name: "Chalkboard SE Bold", size: 25)!
                        Text("Relevant exercises")
                            .font(Font(uiFont: customFont))
                            .fontWeight(.bold)
                            .foregroundColor(Color(UIColor(named: "CutiePink")!))
                        
                        //horizontal scrollview: display exercise cards
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(relevantExercises) { e in
                                    //navigation link to detail view of the exercise
                                    NavigationLink (destination: ExerciseDetail(exercise: e, fav: e.isFav())) {
                                        ExerciseCard1(exercise: e)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding([.leading, .trailing], 20)
                    
                                        
                Spacer()
            }
        }
    }
    
    
}



struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(exercise: exercises[0], fav: exercises[0].isFav())
    }
}
