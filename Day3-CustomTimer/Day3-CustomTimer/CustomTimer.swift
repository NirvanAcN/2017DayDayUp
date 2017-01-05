//
//  CustomTimer.swift
//  Day3-CustomTimer
//
//  Created by NirvanAcN on 2017/1/5.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import Foundation

extension Timer {
    typealias TimerNormalAction = ((Timer)->())
    typealias TimerDelayAction  = (()->())

    /// p1.添加一个自定义Timer初始化类方法
    ///
    /// - Parameters:
    ///   - timeInterval: 间隔时间长度
    ///   - repeats: 是否循环
    ///   - event: 事件
    /// - Returns: Timer
    class func scheduledTimer(timeInterval: TimeInterval, repeats: Bool, event: TimerNormalAction!) -> Timer {
        let timer = Timer(timeInterval: timeInterval, target: self, selector: #selector(onTimerValueChange), userInfo:event, repeats: repeats)
        return timer
    }
    
    /// p3.添加每隔特定时间调用一次Timer
    ///
    /// - Parameters:
    ///   - timeInterval: 时间间隔长度
    ///   - event: 事件
    /// - Returns: Timer
    class func every(_ timeInterval: TimeInterval, _ event: TimerNormalAction!) -> Timer {
        let timer = Timer.scheduledTimer(timeInterval: timeInterval, repeats: true, event: event)
        timer.start()
        return timer
    }
    
    /// p4.添加延迟特定时间调用Timer
    ///
    /// - Parameters:
    ///   - timeInterval: 延迟时间
    ///   - event: 事件
    class func after(_ timeInterval: TimeInterval, _ event: TimerDelayAction!){
        let timer = Timer(timeInterval: timeInterval, target: self, selector: #selector(onDelayTimerValueChange), userInfo:event, repeats: false)
        timer.start()
    }
    
    @objc class fileprivate func onTimerValueChange(_ sender: Timer) {
        guard let event = sender.userInfo as? TimerNormalAction else { return }
        event(sender)
    }
    
    @objc class fileprivate func onDelayTimerValueChange(_ sender: Timer) {
        guard let event = sender.userInfo as? TimerDelayAction else { return }
        event()
        sender.invalidate()
    }
    
    /// p2.添加Timer的启动函数
    ///
    /// - Parameters:
    ///   - runloop: runloop
    ///   - forMode: forMode
    func start(_ runloop: RunLoop = .current, _ forMode:RunLoopMode = .defaultRunLoopMode) {
        runloop.add(self, forMode: forMode)
    }
}

// MARK: - 直观的时间展示（日/时/分/秒/毫秒）
extension Double {
    var milliseconds:   TimeInterval    { return self / 1000 }
    var seconds:        TimeInterval    { return self }
    var minutes:        TimeInterval    { return seconds * 60 }
    var hours:          TimeInterval    { return minutes * 60 }
    var days:           TimeInterval    { return hours * 24 }
}
