//
//  ExerciseList.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 26/07/2022.
//

import SwiftUI

let coloredNavAppearance = UINavigationBarAppearance()
let backItem = UIBarButtonItem()

struct ExerciseList: View {
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundImage = UIImage(named: "background1")
//        coloredNavAppearance.backgroundColor = .systemPink
//        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        backItem.title = "< back"
               
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance

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
