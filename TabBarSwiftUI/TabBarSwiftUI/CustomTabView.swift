//
//  TabViewSample.swift
//  TabBarSwiftUI
//
//  Created by snowman on 2020/12/26.
//  Copyright © 2020 snowman. All rights reserved.
//

import SwiftUI

typealias  TupleColor = (systemImage:String, bgColor: Color)

struct CustomTabView: View {
    @State var selection = 0
    let contentList = [TupleColor("faceid", Color.red),
                       TupleColor("earpods", Color.purple),
                       TupleColor("checkmark.icloud", Color.yellow)]
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                TabView(selection: $selection) {
                    ForEach(0..<contentList.count) { index in
                        HStack {
                            Spacer()
                            Text(contentList[index].systemImage)
                                .padding()
                            Image.init(systemName: contentList[index].systemImage)
                            Spacer()
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .background(contentList[selection].bgColor.opacity(0.5))
            }
            ZStack {
                HStack {
                    Spacer()
                    Button(action: {
                        if (self.selection >= 1) { self.selection -= 1 }
                    }, label: {
                        Text("Back")
                    })
                    .frame(width: 100, height: 40)
                    .disabled(self.selection == 0)
                    
                    Spacer()
                    Button(action: {
                        if (self.selection + 1 < self.contentList.count) {
                            self.selection += 1
                        }
                    }, label: {
                        Text("Next")
                    })
                    .frame(width: 100, height: 40)
                    .disabled(self.selection == self.contentList.count - 1)
                    Spacer()
                }
            }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
