//
//  ExerciseList.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 26/07/2022.
//

import SwiftUI


struct ExerciseList: View {
    init() {
        let nav = UINavigationBarAppearance()
        
        nav.configureWithOpaqueBackground()
        nav.backgroundColor = UIColor(named: "CutiePink")
        nav.titleTextAttributes = [.font : UIFont(name: "Chalkboard SE Bold", size: 30)!, .foregroundColor: UIColor.white]
        nav.largeTitleTextAttributes = [.font : UIFont(name: "Chalkboard SE Bold", size: 30)!, .foregroundColor: UIColor.white]
        
        let nav2 = nav.copy()
        nav2.titleTextAttributes = [.font : UIFont(name: "Chalkboard SE", size: 18)!, .foregroundColor: UIColor.white]
        
//        let navController = UINavigationController()
//        let navigationBar = navController.navigationBar
//
//
//            let firstFrame = CGRect(x: 0, y: 0, width: navigationBar.frame.width/2, height: navigationBar.frame.height)
//            let secondFrame = CGRect(x: navigationBar.frame.width/2, y: 0, width: navigationBar.frame.width/2, height: navigationBar.frame.height)
//
//            let firstLabel = UILabel(frame: firstFrame)
//            firstLabel.text = "First"
//
//            let secondLabel = UILabel(frame: secondFrame)
//            secondLabel.text = "Second"
//
//            navigationBar.addSubview(firstLabel)
//            navigationBar.addSubview(secondLabel)
    
        
        let button = UIBarButtonItemAppearance(style: .plain)
        button.normal.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Chalkboard SE", size: 20)!]
        nav.buttonAppearance = button
        
        let navigationItem = UINavigationItem()
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchController
        
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().scrollEdgeAppearance = nav
        UINavigationBar.appearance().standardAppearance = nav
        UINavigationBar.appearance().compactAppearance = nav2
        
    

    }
    
    func check() {
        
    }
    
    /* Search function */
    @State private var queryString = ""
    
    var searchedExercises: [Exercise] { // 1
        if queryString.isEmpty { return tabExercises }
        else {
            return tabExercises.filter { $0.title.localizedCaseInsensitiveContains(queryString) }
        }
    }
    
    @State private var tab = "home"
    
    var tabExercises : [Exercise] {
        if (tab == "home") {return exercises}
        else {return favList}
    }
    
    
    /* Body view */
    var body: some View {
        let buttons = HStack {
            Button(action: {
                tab = "home"
            }) {
                Image("home30").imageScale(.large)
            }
            
            Spacer()
                    
            Button(action: {
                tab = "fav"
            }) {
                Image("fav30")
            }
        }
            .padding([.trailing, .leading], 30)

        VStack {
            buttons

            
            NavigationView {
                List (searchedExercises) { e in
                    ZStack (alignment: .leading) {
                        NavigationLink (destination: ExerciseDetail(exercise: e)) {
                            EmptyView()
                        }
//                        .opacity(0)
                        ExerciseCard2(exercise: e)
                    }
                }
                .navigationBarTitle("Home-workout Exercises")
                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarItems(
//                    leading:
//                        Button(action: {
//                            tab = "home"
//                        }) {
//                            Image("icons8-home-30").imageScale(.large)
//                        },
//                    trailing:
//
//                        Button(action: {
//                            tab = "fav"
//                        }) {
//                            Image("icons8-heart-30").imageScale(.large)
//                        }
//                )
            }
            .searchable(text: $queryString, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search exercise")
        }
        .background(Color(UIColor(named: "CutiePink")!))
        
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
