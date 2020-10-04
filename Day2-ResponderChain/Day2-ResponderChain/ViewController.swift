//
//  ViewController.swift
//  Day2-ResponderChain
//
//  Created by NirvanAcN on 2017/1/4.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func responderRouterActionChain(by identifier: String, sender: Any!) -> Bool {
        guard identifier == String(describing: ResponderChainTableViewCell.self) else {
            return false
        }
        print(type(of: self), "响应并截获了事件，响应链中断", sender ?? "No index")
        return true
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ResponderChainTableViewCell.self), for: indexPath) as! ResponderChainTableViewCell
        cell.index = indexPath
        return cell
    }
}
