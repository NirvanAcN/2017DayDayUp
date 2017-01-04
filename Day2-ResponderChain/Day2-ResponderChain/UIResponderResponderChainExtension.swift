//
//  UIResponderResponderChainExtension.swift
//  Day2-ResponderChain
//
//  Created by NirvanAcN on 2017/1/4.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import Foundation
import UIKit

extension UIResponder {
    /// 开始传递事件（分发）
    ///
    /// - Parameters:
    ///   - identifier: 事件的id（根据id判断当前UIResponder是否处理此事件）
    ///   - sender: 事件所传递的数据
    func handOutAction(by identifier: String, sender: Any!) {
        if !responderRouterActionChain(by: identifier, sender: sender) {
            guard let nextResponder = next else { return }
            nextResponder.handOutAction(by: identifier, sender: sender)
        }
    }
    
    /// 响应事件（响应）
    ///
    /// - Parameters:
    ///   - identifier: 事件的id（根据id判断当前UIResponder是否处理此事件）
    ///   - sender: 事件所传递的数据
    /// - Returns: 若不继续向下传递return true事件被拦截，响应链中断；继续传递return false，直到responderRouterActionChain返回true或者传递到UIApplication仍未被响应
    func responderRouterActionChain(by identifier: String, sender: Any!) -> Bool {
        return false
    }
}
