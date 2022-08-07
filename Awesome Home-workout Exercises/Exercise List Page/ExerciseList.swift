/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 26/07/2022
  Last modified: 06/08/2022
  Acknowledgement:
    [1] StackOverflow: https://stackoverflow.com/questions/57334455/how-can-i-pop-to-the-root-view-using-swiftui
    [2] Hacking with swift: https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-search-bar-to-filter-your-data
*/
//
//  ExerciseList.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 26/07/2022.
//

import SwiftUI

/* this struct is to pop to root view from anywhere when button is clicked (ref: [1]) */
struct NavigationUtil {
  static func popToRootView() {
    findNavigationController(viewController: UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController)?
      .popToRootViewController(animated: true)
  }

  static func findNavigationController(viewController: UIViewController?) -> UINavigationController? {
    guard let viewController = viewController else {
      return nil
    }

    if let navigationController = viewController as? UINavigationController {
      return navigationController
    }

    for childViewController in viewController.children {
      return findNavigationController(viewController: childViewController)
    }

    return nil
  }
}


/* Main content view: contain 2 tab to switch */
struct ExerciseList: View {
    @State var tab = "home"  //state variable to switch tabs


    var body: some View {
        //buttons to switch tabs
        let buttons = HStack {
            //button "home": tab "Home"
            Button(action: {
                tab = "home"
                NavigationUtil.popToRootView() //pop to root view from anywhere
            }) {
                Image("home27")
            }
            
            Spacer()
                    
            //button "fav": tab "Favorite list"
            Button(action: {
                tab = "fav"
                NavigationUtil.popToRootView() //pop to root view from anywhere
            }) {
                Image("fav27")
            }
        }
        .padding([.trailing, .leading], 30)

        /* Display content as VStack: including a Tab-Buttons Bar and the Tab View*/
        VStack {
            buttons
                .padding(.top, 10)

            TabView(tab: tab)
        }
        .background(Color(UIColor(named: "CutiePink")!))
        
    }
    
}


/* Display view for each chosen Tab*/
struct TabView: View {
    var tab: String //var to identify the tab
    
    init(tab: String) {
        self.tab = tab
        
        /* set up for navigation bar and navigation back button style*/
        let nav = UINavigationBarAppearance()
        
        nav.backgroundColor = UIColor(named: "CutiePink")
        nav.titleTextAttributes = [.font : UIFont(name: "Chalkboard SE Bold", size: 28)!, .foregroundColor: UIColor.white]
        nav.largeTitleTextAttributes = [.font : UIFont(name: "Chalkboard SE Bold", size: 28)!, .foregroundColor: UIColor.white]
        
        let nav2 = nav.copy()
        nav2.titleTextAttributes = [.font : UIFont(name: "Chalkboard SE", size: 18)!, .foregroundColor: UIColor.white]
        
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
    
    
    /* Get the exercises list to display for each tab */
    var tabExercises : [Exercise] {
        if (tab == "home") {return exercises}
        else {return favList}
    }
    
    
    /* Search function: search by title/author/category (ref: [2])*/
    @State private var queryString = ""
    
    var searchedExercises: [Exercise] {
        if queryString.isEmpty { return tabExercises }
        else {
            return tabExercises.filter { $0.title.localizedCaseInsensitiveContains(queryString)
                || $0.author.name.localizedCaseInsensitiveContains(queryString)
                || $0.category.localizedCaseInsensitiveContains(queryString)
            }
        }
    }
    
    
    var body: some View {
        NavigationView {
            List (searchedExercises) { e in
                ZStack (alignment: .topLeading) {
                    NavigationLink (destination: ExerciseDetail(exercise: e, fav: e.isFav())) {
                        EmptyView() //this is to hide the default arrow of list in swiftui
                    }
                    ExerciseCard2(exercise: e) //show exercises as cards
                        .padding(.trailing, 7)
                }
            }
            .navigationBarTitle(tab == "home" ? "Home-workout Exercises" : "My Favorite List") //choose title for the tab
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $queryString, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search by title, author, category")
            .refreshable {
                _ = TabView(tab: tab)
            }
        }
        
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
