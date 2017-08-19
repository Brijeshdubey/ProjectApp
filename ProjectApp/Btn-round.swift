//
//  Btn-round.swift
//  ProjectApp
//
//  Created by Brijesh Dubey on 19/08/17.
//  Copyright © 2017 Brijesh Dubey. All rights reserved.
//

import UIKit

class Btn_round: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       // layer.shadowColor = UIColor(red: greyFont as! CGFloat, green: greyFont as! CGFloat, blue: greyFont as! CGFloat, alpha: 0.06) as! CGColor
        layer.opacity = 0.8
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowRadius = 5.0
    }

       
}
