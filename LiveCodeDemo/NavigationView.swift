//
//  NavigationView.swift
//  LiveCodeDemo
//
//  Created by Hayden Curfman on 9/29/24.
//

import SwiftUI

struct NavigationView: View {
    @State
    var students: [Student] = [
        Student(name: "Ephelia Williams", profilePicture: "ephelia", classYear: "'25", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", major: "Computer Science", clubs: "Ephbytes, WSO", hometown: "Williamstown, MA")
    ]

    var body: some View {
        NavigationStack {
            List(students, id: \.id) { student in
                NavigationLink {
                    ContentView(student: student)
                } label: {
                    HStack {
                        Image(student.profilePicture)
                            .resizable()
                            .frame(width: 96, height: 96)
                        Text(student.name)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationView()
}
