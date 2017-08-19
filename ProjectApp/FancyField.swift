//
//  FancyField.swift
//  ProjectApp
//
//  Created by Brijesh Dubey on 19/08/17.
//  Copyright © 2017 Brijesh Dubey. All rights reserved.
//

import UIKit

class FancyField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
      //  layer.borderColor = UIColor(red: greyFont, green: greyFont, blue: greyFont, alpha: 0.6) as! CGColor
        layer.borderWidth = 2.0
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
