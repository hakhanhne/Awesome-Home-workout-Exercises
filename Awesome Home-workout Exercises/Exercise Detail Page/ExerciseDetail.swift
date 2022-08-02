//
//  ExerciseDetail.swift
//  Awesome Home-workout Exercises
//
//  Created by Khanh Tran Nguyen Ha on 26/07/2022.
//

import SwiftUI

extension Array where Element: Equatable {
    mutating func remove(object: Element) {
        guard let index = firstIndex(of: object) else {return}
        remove(at: index)
    }
    
}


struct ExerciseDetail: View {
    var exercise: Exercise
    @State private var hover = false
    var body: some View {
        let button_add = Button(action: {favList.append(exercise)}) {
            HStack {
                Image("add30")
                Text("Add to Favorite List")
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
            }
                .padding([.top, .bottom], 5)
                .frame(maxWidth: .infinity)
                
        }
            .buttonStyle(.plain)
            .foregroundColor(Color(UIColor(named: "CutiePink")!))
            .border(Color(UIColor(named: "CutiePink")!), width: 2)
//            .onHover { isHovered in
//                self.hover = isHovered
//                DispatchQueue.main.async { //<-- Here
//                    if (self.hover) {
//                        NSCursor.pointingHand.push()
//                    } else {
//                        NSCursor.pop()
//                    }
//                }
//            }
        
        let button_remove = Button(action: {
                if let index = favList.firstIndex(where: {$0.id == exercise.id}) {
                    favList.remove(at: index)
                }
            }) {
                HStack {
                    Image("remove30")
                    Text("Remove from Favorite List")
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
                    .padding([.top, .bottom], 5)
                    .frame(maxWidth: .infinity)
                    
            }
            .buttonStyle(.plain)
            .foregroundColor(Color(UIColor(named: "CutiePink")!))
            .border(Color(UIColor(named: "CutiePink")!), width: 2)
        
        
        ScrollView {
            
            ZStack {
                VStack (alignment: .leading){
                    
                    Button(action: {
                        exercise.openUrl(url: exercise.videoUrl)
                        
                    }, label: {
                        ZStack {
                            AsyncImage(url: exercise.thumbnailUrl) { image in
                                image
                                    .resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(height: 230)
                            
                            
                            Rectangle()
                                .foregroundColor(.black)
                                .opacity(0.3)
                            
                            Image("play50")
                        }
                    })
                    
                    
                    VStack (alignment: .leading, spacing: 10) {
                        Text(exercise.title)
                            .fontWeight(.semibold)
                        
                        Text(exercise.publishedDate)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                        
                        ZStack {
                            button_add.hidden()
                            button_remove
//                            button_add
//                            button_remove.hidden()
                            
                        }
                        
                        AuthorBar(exercise: exercise)
                            .padding(.top, 20)
                    
                        Text(exercise.description)
                            .padding(.top, 20)
                    }
                    .padding([.leading, .trailing], 20)
                                        
                    Spacer()
                    
                    
                }
            }
            
        }
    }
    
    func chooseText() -> String {
        if (self.exercise.isFav()) {
            return "Remove from fav"
        }
        return "Add to fav"
    }
    
}

//extension View {
//
//    public func cursor(_ cursor: NSCursor) -> some View {
//        self.onHover { inside in
//            if inside {
//                cursor.push()
//            } else {
//                NSCursor.pop()
//            }
//        }
//    }
//}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(exercise: exercises[0])
    }
}
