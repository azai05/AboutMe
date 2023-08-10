//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct Me {
    let back: String
    let interest: String
    let proj: String
}

struct ContentView: View {
    @State private var detail: Me?
    @State private var backText = ""
    @State private var interestText = ""
    @State private var projText = ""
    
    var body: some View {
        ScrollView {
            VStack {
                
                Text("Amelia Zai")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.537, saturation: 0.789, brightness: 0.839))
                
                Image("image")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Protests from the 504 Sit-in in San Francisco, CA")
                HStack{
                    Button("My background") {
                        projText = ""
                        interestText = ""
                        backText = "I was born and raised in Boston, MA! I hope to pursue a career in tech!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.purple)
                    
                    
                    Button("My Interests") {
                        backText = ""
                        projText = ""
                        interestText = "I enjoy doing disability activism and writing children's books"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.purple)
                    
                    Button("My Projects") {
                        interestText = ""
                        backText = ""
                        projText = "My first childrens book will be out this August! I also have created software that matches ukrainian refugees "
                            
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.purple)
                
                }
                
            }
            
            .padding()
            Text(backText)
            Text(interestText)
            Text(projText)
            
        }
        
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
