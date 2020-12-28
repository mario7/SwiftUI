//
//  ThirdView.swift
//  TabBarSwiftUI
//
//  Created by snowman on 12/20/20.
//  Copyright © 2020 jp.co.futureline. All rights reserved.
//

import SwiftUI

struct ThirdView: View {
    @Binding var badgeNumber: Int
    let idx: Int = 0
    var body: some View {
        GeometryReader { geometry in
            Button(action: {
                    self.badgeNumber -= 1
                },
                label: {Text("minus ")})
            Circle()
                .fill(Color.clear)
//                .preference(key: CirclePreferenceKey.self,
//                        value:[PreferenceData(idx: self.idx, rect: geometry.frame(in: .named("myCoordination")))])
        }
    
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(badgeNumber: Binding<Int>.constant(1))
    }
}
