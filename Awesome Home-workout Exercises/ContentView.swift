//
//  ContentView.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 15/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
//        Color(red: 0.03, green: 0.03, blue: 0.35).edgesIgnoringSafeArea(.all)
        VStack {
//            Image("rmit-logo-white")
//            .resizable()  //allow to resize
//            .aspectRatio(contentMode: .fit)  //should go together with resizeable()
//            .padding(50.0)
//            .frame(width: 350.0, alignment: .center )
            Text ("ACB 12555017 tks")
            .font(.system(size: 30))
            .fontWeight(.bold)
            .foregroundColor(.white)
            Image("diamond-fancy")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200.0, alignment: .center )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
