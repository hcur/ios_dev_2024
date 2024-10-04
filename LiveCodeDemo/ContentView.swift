//
//  ContentView.swift
//  LiveCodeDemo
//
//  Created by Hayden Curfman on 9/22/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Profile")
                Spacer()
                Image(systemName: "pencil")
            }
            .font(.title.bold())
            
            Spacer()
            
            VStack {
                Image("ephelia")
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                HStack {
                    Text("Ephelia Williams")
                        .font(.largeTitle)
                        .bold()
                    Text("'25")
                        .font(.largeTitle)
                }
                Text("Student")
                    .font(.subheadline)
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Bio")
                    .font(.headline)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("About")
                    .font(.headline)
                HStack {
                    Text("Major(s)")
                    Spacer()
                    Text("Computer Science")
                }
                HStack {
                    Text("Club(s)")
                    Spacer()
                    Text("EphBytes, WSO")
                }
                HStack {
                    Text("Hometown")
                    Spacer()
                    Text("Williamstown, MA")
                }
            }
            .padding()
            
            // TODO: broken
            VStack(alignment: .leading) {
                Text("Interests")
                    .font(.headline)
            }

            Spacer()

            Button(action: {
                print("Hello!");
            }, label: {
                HStack {
                    Image(systemName: "message.fill")
                    Text("Message")
                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.purple)
                .foregroundColor(.white)
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
