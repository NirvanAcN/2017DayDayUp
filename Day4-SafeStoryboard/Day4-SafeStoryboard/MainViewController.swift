//
//  MainViewController.swift
//  Day4-SafeStoryboard
//
//  Created by NirvanAcN on 2017/1/6.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func awakeFromNib() {
        let item0 = UIStoryboard.init(with: .Item0).instantiateInitialViewController()!
        let item1 = UIStoryboard.init(with: .Item1).instantiateInitialViewController()!
        let item2 = UIStoryboard.init(with: .Item2).instantiateInitialViewController()!
        viewControllers =   [item0, item1, item2]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
