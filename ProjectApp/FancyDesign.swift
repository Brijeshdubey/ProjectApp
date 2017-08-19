//
//  FancyDesign.swift
//  ProjectApp
//
//  Created by Brijesh Dubey on 19/08/17.
//  Copyright © 2017 Brijesh Dubey. All rights reserved.
//

import UIKit

class FancyDesign: UIView {

    override func awakeFromNib() {
        super .awakeFromNib()
     //   layer.shadowColor = UIColor(red: greyFont, green: greyFont, blue: greyFont , alpha: 0.06) as! CGColor
        layer.opacity = 0.8
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowRadius = 5.0
    }

}
