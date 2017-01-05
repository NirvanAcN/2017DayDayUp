//
//  ResponderChainTableViewCell.swift
//  Day2-ResponderChain
//
//  Created by NirvanAcN on 2017/1/4.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import UIKit

class ResponderChainTableViewCell: UITableViewCell {

    var index: IndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func onBtnClick(_ sender: UIButton) {
        handOutAction(by: String(describing: ResponderChainTableViewCell.self), sender: index)
    }
    
    override func responderRouterActionChain(by identifier: String, sender: Any!) -> Bool {
        print(type(of: self), "响应了事件，但是没有截获，继续传递……")
        return false
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
