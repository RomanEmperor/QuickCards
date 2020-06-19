//
//  Users.swift
//  QuickCard
//
//  Created by Roman Parajuli on 6/19/20.
//  Copyright © 2020 Roman Parajuli. All rights reserved.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var title: String
    var email: String
    var companyUrl: String
    var address: String
    var visit: Visit
}

extension User {
    
    // These Data are to be feed in by REST API or other data source in production app
    
    static let users = [
        User(firstName: "Roman",
             lastName: "Parajuli",
             title: "iOS Developer",
             email: "romanparajuli@gmail.com",
             companyUrl: "www.romanparajuli.com",
             address: "14 Talchhikhel Street, Lalitpur",
             visit: Visit(views: 90, events: 21, badges: 23, actions: 5, duration: 12)),
        User(firstName: "Roshan Jung",
             lastName: "Karki",
             title: "Python Developer",
             email: "roshanjungkarki@gmail.com",
             companyUrl: "www.roshanjungkarki.com",
             address: "11 Baneshower, Kathmandu",
             visit: Visit(views: 45, events: 90, badges: 21, actions: 16, duration: 23)),
        User(firstName: "Subrath",
             lastName: "Budhathoki",
             title: "Lecturer",
             email: "subrathbudhathoki@gmail.com",
             companyUrl: "www.subrathbudhathoki.com",
             address: "12 Mahalaxmisthan, Lalitpur",
             visit: Visit(views: 34, events: 23, badges: 90, actions: 12, duration: 73)),
        User(firstName: "Roman",
             lastName: "Parajuli",
             title: "Business Lead",
             email: "bhairomanparajuli@gmail.com",
             companyUrl: "www.bhairomanparajuli.com",
             address: "1 Birat Chowk, Biratnagar",
             visit: Visit(views: 34, events: 18, badges: 65, actions: 90, duration: 87))
    ]
}
