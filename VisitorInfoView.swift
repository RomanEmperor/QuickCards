//
//  VisitorInfoView.swift
//  QuickCard
//
//  Created by Roman Parajuli on 6/19/20.
//  Copyright © 2020 Roman Parajuli. All rights reserved.
//

import SwiftUI

struct VisitorInfoView: View {
    
    @State var user: User
    @State var isChartHidden = true
    @State var isChartLoaded = false
    
    var body: some View {
        VStack {
            CardView(user: user)
                .gesture(TapGesture()
                    .onEnded {
                        withAnimation(.easeInOut, {
                            self.isChartHidden.toggle()
                        })
                })
            if !isChartHidden {
                GeometryReader { proxy in
                    HStack (alignment: .bottom) {
                        BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                                width: proxy.size.width * 0.16,
                                height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views) : 0.0 ,
                                label: "Views")
                        BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                                width: proxy.size.width * 0.16,
                                height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.events) : 0.0 ,
                                label: "Events")
                        BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                                width: proxy.size.width * 0.16,
                                height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.badges) : 0.0 ,
                                label: "Badges")
                        BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                                width: proxy.size.width * 0.16,
                                height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.actions) : 0.0 ,
                                label: "Actions")
                        BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                                width: proxy.size.width * 0.16,
                                height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.duration) : 0.0 ,
                                label: "Duration")
                    } //HStack
                        .frame(height: 0.5 * proxy.size.height)
                        .animation(.easeOut(duration: 1.0))
                        .onAppear{
                            self.isChartLoaded = true
                    }
                    .onDisappear{
                        self.isChartLoaded = false
                    }
                    
                } //GeometryReader
                    .transition(.move(edge: .trailing))
            }//if-statement
            
        } //VStack
    } //body
} // VisitorInfoView

struct VisitorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VisitorInfoView(user: User(firstName: "Ram", lastName: "Hari", title: "Designer", email: "ramhari@gmail.com", companyUrl: "www.ramhari.com", address: "12 Jadibuti, Bhaktapur", visit: Visit(views: 50, events: 60, badges: 67, actions: 99, duration: 87)))
    }
}
