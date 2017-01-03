//
//  CustomView.swift
//  Day1-CustomUIView
//
//  Created by NirvanAcN on 2017/1/3.
//  Copyright © 2017年 HOME Ma. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    var lab: UILabel!
    
    @IBInspectable
    var corner: CGFloat = 0 {
        didSet {
            layer.cornerRadius  = corner
            layer.masksToBounds = true
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
            layer.borderColor = _borderColor.cgColor
        }
    }
    
    private var _borderColor = UIColor.black
    @IBInspectable
    var borderColor: UIColor! {
        set {
            _borderColor = newValue
            layer.borderColor = newValue.cgColor
        }
        get {
            return _borderColor
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        setupUI()
    }
    
    func setupUI() {
        lab = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 20))
        lab.backgroundColor = UIColor.red
        addSubview(lab)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        lab.center = CGPoint.init(x: bounds.size.width / 2, y: bounds.size.height / 2)
    }

}
