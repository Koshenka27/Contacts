//
//  Contact.swift
//  Contact
//
//  Created by Logan Koshenka on 9/10/21.
//

import Foundation
import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var phoneNumber: String
    var email: String
    var address: String
    var birthday: String
    var age: String
    var notes: String
    var awayMessage: String
    var mood: String
    var updateTimestamp: String
    var rank: Int
    var photo: String
    var mostRecentText: String
}

var contacts = [
    Contact(name: "Logan Koshenka", phoneNumber: "(555)555-5555", email: "logan@email.com", address: "123 Main St.", birthday: "Nov 3", age: "26", notes: "super cool guy", awayMessage: "I worked all week and now I just want to relax and watch some football!", mood: "relieved 😎", updateTimestamp: "6:04 PM", rank: 3, photo: "logan", mostRecentText: "yeah I tried to go yesterday but they were closed so maybe tomorrow idk"),
    Contact(name: "Hugh Jass", phoneNumber: "(555)555-5555", email: "hughjass@email.com", address: "123 Main St.", birthday: "Apr 1", age: "27", notes: "sick name", awayMessage: "I love the Pittsburgh Steelers", mood: "lazy 😞", updateTimestamp: "12:53 PM", rank: 7, photo: "chuck", mostRecentText: "I was thinking that earlier about how awesome it is but it does get old lol")
]
