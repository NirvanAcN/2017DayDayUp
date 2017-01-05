//
//  ViewController.swift
//  Day3-CustomTimer
//
//  Created by NirvanAcN on 2017/1/5.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tdvc = segue.destination as! TimerDisplayViewController
        tdvc.type = TimerType(rawValue: segue.identifier!)!
    }

}

