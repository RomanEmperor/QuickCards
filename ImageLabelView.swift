//
//  ImageLabelView.swift
//  QuickCard
//
//  Created by Roman Parajuli on 6/19/20.
//  Copyright © 2020 Roman Parajuli. All rights reserved.
//

import SwiftUI

struct ImageLabelView: View {
    
    var imageName: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.orange)
            Text(text)
        }
    }
}

struct ImageLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLabelView(imageName: "envelope.fill", text: .constant("romanaugustus@gmail.com"))
    }
}
