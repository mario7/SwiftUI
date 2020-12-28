
//
//  PreferenceData.swift
//  TabBarSwiftUI
//
//  Created by snowman on 2020/12/21.
//  Copyright © 2020 Ahmed Elzohry. All rights reserved.
//

import Foundation
import SwiftUI

struct PreferenceData: Equatable {
    static func == (lhs: PreferenceData, rhs: PreferenceData) -> Bool {
        lhs.idx < rhs.idx
    }

    let idx: Int
    var rect: CGRect
}

struct CirclePreferenceKey: PreferenceKey {
    
    static var defaultValue = [PreferenceData]()
    
    static func reduce(value: inout [PreferenceData],
                       nextValue: () -> [PreferenceData]) {
        value.append(contentsOf: nextValue())
    }
    
}

