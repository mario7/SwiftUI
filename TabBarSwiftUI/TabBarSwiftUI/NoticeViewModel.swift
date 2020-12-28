//
//  NoticeViewModel.swift
//  TabBarSwiftUI
//
//  Created by snowman on 12/20/20.
//  Copyright © 2020 jp.co.futureline. All rights reserved.
//

import Foundation

class NoticeViewModel: ObservableObject {
    
    @Published var badgeNumber = 10
    
    func setBadgeNum(count: Int) {
        self.badgeNumber = count
    }
    func getBadgeNum() -> Int {
        badgeNumber
    }
}

