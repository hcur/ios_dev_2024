//
//  Student.swift
//  LiveCodeDemo
//
//  Created by Hayden Curfman on 9/30/24.
//

import Foundation

struct Student: Identifiable {
    var id = UUID()
    
    var name: String
    var profilePicture: String
    var classYear: String
    var bio: String
    var major: String
}
