//
//  CardView.swift
//  QuickCard
//
//  Created by Roman Parajuli on 6/19/20.
//  Copyright © 2020 Roman Parajuli. All rights reserved.
//

import SwiftUI

struct CardView: View {
    @State var user: User
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("BackgroundColor"))
                .frame(width: 350, height: 200)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("\(user.firstName) \(user.lastName)")
                        .font(.title)
                    Text("\(user.title)")
                        .italic()
                    Spacer()
                    ImageLabelView(imageName: "envelope.fill", text: $user.email)
                    ImageLabelView(imageName: "link", text: $user.companyUrl)
                    ImageLabelView(imageName: "location.fill", text: $user.address)
                } // VStack
                    .padding()
                    .foregroundColor(.white)
                Spacer()
            }
        } // ZStack
            .frame(width: 350, height: 200)
    } //Body
}// CardView

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(firstName: "Ram", lastName: "Prakash", title: "iOS Engineer", email: "ramprakash@icloud.com", companyUrl: "www.ramprakash.com", address: "Nepal", visit: Visit(views: 3432, events: 987, badges: 97, actions: 897, duration: 88)))
    }
}
