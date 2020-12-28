//
//  ContentView.swift
//  TabBarSwiftUI
//
//  Created by snowman on 12/20/20.
//  Copyright © 2020 jp.co.futureline. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var badgeNumber: Int = 3
    private var badgePosition: CGFloat = 3
    private var tabsCount: CGFloat = 4
    //@State var model: NoticeViewModel
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottomLeading) {
                // TabView
                TabView {
                    Text("First View")
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("First")
                    }.tag(0)
                    
                    Button(action: {
                        self.badgeNumber += 1
                    },
                           label: {Text("add ")})
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("second")
                    }.tag(1)
                    
                    ThirdView(badgeNumber: self.$badgeNumber)
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("third")
                    }.tag(2)
                }
                
                // Badge View
                ZStack {
                    Circle()
                        .foregroundColor(.red)
                    
                    Text("\(self.badgeNumber)")
                        .foregroundColor(.white)
                        .font(Font.system(size: 12))
                }
                .frame(width: 20, height: 20)
                .offset(x:  geometry.size.width / self.tabsCount ,
                        y: -30)
                    .opacity(self.badgeNumber == 0 ? 0 : 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            ContentView()
                .environmentObject(NoticeViewModel())
                .previewDevice("iPhone SE")
        }
    }
}
