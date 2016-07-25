//
//  intrinsicContensizeForLabel.swift
//  UI01
//
//  Created by 婉卿容若 on 16/7/7.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class intrinsicContensizeForLabel: UILabel {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func intrinsicContentSize() -> CGSize {
//        let originalSize = super.intrinsicContentSize()
//        let size = CGSizeMake(originalSize.width+50, originalSize.height+100)
        
        let size = CGSizeMake(200, 200)
        return size
    }

}

