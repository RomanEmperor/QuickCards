//
//  Visit.swift
//  QuickCard
//
//  Created by Roman Parajuli on 6/19/20.
//  Copyright © 2020 Roman Parajuli. All rights reserved.
//

import Foundation

struct Visit: Identifiable {
    let id = UUID()
    let views: Int
    let events: Int
    let badges: Int
    let actions: Int
    let duration: Int
}
