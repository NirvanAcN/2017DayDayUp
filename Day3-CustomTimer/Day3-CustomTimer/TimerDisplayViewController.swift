//
//  TimerDisplayViewController.swift
//  Day3-CustomTimer
//
//  Created by NirvanAcN on 2017/1/5.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import UIKit

enum TimerType: String {
    case DefaultCustomTimer, EveryTimer, DelayTimer
}

class TimerDisplayViewController: UIViewController {

    var timer:  Timer!
    var type =  TimerType.DefaultCustomTimer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch type {
        case .DefaultCustomTimer:
            timer = Timer.scheduledTimer(timeInterval: 1.0.seconds, repeats: true, event: {
                _ = $0
                print("DefaultCustomTimer")
            })
            timer.start()
        case .EveryTimer:
            timer = Timer.every(1.0.seconds, {
                _ = $0
                print("EveryTimer")
            })
        case .DelayTimer:
            Timer.after(2.0.seconds, {
                print("DelayTimer")
            })
        }
    }

    deinit {
        timer?.invalidate()
        print(type(of: self), #function)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
