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
        nav.configureWithOpaqueBackground()
        nav.backgroundImage = UIImage(named: "background1")
        
        nav.titleTextAttributes = [.foregroundColor: UIColor.white]
        nav.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        nav.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 0)
        
//        navButton.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white

//        let transNav = nav.copy()
//        transNav.configureWithTransparentBackground()
        
        UINavigationBar.appearance().standardAppearance = nav
        UINavigationBar.appearance().compactAppearance = nav
        UINavigationBar.appearance().scrollEdgeAppearance = nav
        

    }
    var body: some View {
        NavigationView {
            
            List(exercises) { e in
                NavigationLink {
                    ExerciseDetail(exercise: e)
                } label: {
                    ExerciseCard(exercise: e)
                }
                .navigationTitle("Home-workout Exercises")
            }
        }
    }

}

struct ExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseList()
    }
}
