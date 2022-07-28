//
//  ExerciseList.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 26/07/2022.
//

import SwiftUI

let nav = UINavigationBarAppearance()
let navButton = UIBarButtonItemAppearance()

struct ExerciseList: View {
    init() {
        nav.configureWithTransparentBackground()
        nav.titleTextAttributes = [.foregroundColor: UIColor.white]
        nav.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        nav.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 0)

//        navButton.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.black

        let transNav = nav.copy()
        transNav.configureWithTransparentBackground()

        UINavigationBar.appearance().standardAppearance = nav
        UINavigationBar.appearance().compactAppearance = nav
        UINavigationBar.appearance().scrollEdgeAppearance = nav


    }
    
    private var splashImageBackground: some View {
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geometry.size.width)
            }
        }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

//                List(exercises) { e in
//                    NavigationLink {
//                        ExerciseDetail(exercise: e)
//                    } label: {
//                        ExerciseCard(exercise: e)
//                    }
//                    .navigationTitle("Home-workout Exercises")
//                    .navigationBarTitleDisplayMode(.inline)
//                }

            }
        }
        
        
        //-------this works
        
//        NavigationView {
//            splashImageBackground
//                .overlay(
//
//                    VStack(alignment: .leading){
//                        Text("Home-workout Exercises")
//                            .font(.system(size: 30))
//                            .foregroundColor(.black)
//                        VStack{
//                            ForEach(exercises) { e in
//                                 NavigationLink {
//                                     ExerciseDetail(exercise: e)
//                                 } label: {
//                                     ExerciseCard(exercise: e)
//                                 }
//                             }
//                        }.padding(.bottom, 400)
//
//                    }
//                )
//        }
        //-------------

        
        
//        ZStack {
//            Image("background")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
//
//            NavigationView {
//                List(exercises) { e in
//                    NavigationLink {
//                        ExerciseDetail(exercise: e)
//                    } label: {
//                        ExerciseCard(exercise: e)
//                    }
//                    .navigationTitle("Home-workout Exercises")
//                    .navigationBarTitleDisplayMode(.inline)
//                }
//            }
//
//        }
    }
}

struct ExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExerciseList()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
