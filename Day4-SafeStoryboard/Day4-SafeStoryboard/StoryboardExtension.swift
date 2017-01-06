//
//  StoryboardExtension.swift
//  Day4-SafeStoryboard
//
//  Created by NirvanAcN on 2017/1/6.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import Foundation
import UIKit

enum StoryboardName: String {
    case Main, Item0, Item1, Item2
}

extension UIStoryboard {
    convenience init(with name: StoryboardName) {
        self.init(name: name.rawValue, bundle: nil)
    }
}
