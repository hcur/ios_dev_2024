//
//  ContentView.swift
//  LiveCodeDemo
//
//  Created by Hayden Curfman on 9/22/24.
//

import SwiftUI

struct ContentView: View {
    let student: Student

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
                Image(student.profilePicture)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                HStack {
                    Text(student.name)
                        .font(.largeTitle)
                        .bold()
                    Text(student.classYear)
                        .font(.largeTitle)
                }
                Text("Student")
                    .font(.subheadline)
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Bio")
                    .font(.headline)
                Text(student.bio)
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("About")
                    .font(.headline)
                HStack {
                    Text("Major(s)")
                    Spacer()
                    Text(student.major)
                }
                HStack {
                    Text("Club(s)")
                    Spacer()
                    Text(student.clubs)
                }
                HStack {
                    Text("Hometown")
                    Spacer()
                    Text(student.hometown)
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
    ContentView(student: Student(name: "Ephelia Williams", profilePicture: "ephelia", classYear: "'25", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", major: "Computer Science", clubs: "Ephbytes, WSO", hometown: "Williamstown, MA"))
}
