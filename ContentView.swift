//
//  ContentView.swift
//  QuickCard
//
//  Created by Roman Parajuli on 6/19/20.
//  Copyright © 2020 Roman Parajuli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach (User.users) { user in
                        NavigationLink(destination: VisitorInfoView(user: user)) {
                            CardView(user: user)
                                .padding(.vertical)
                        }
                    }//ForEach
                }// VStack
            } //ScrollView
            .navigationBarTitle("Quick Cards")
        }//NavigationView
    } //Body
} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

