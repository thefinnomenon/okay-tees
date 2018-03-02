//
//  FixedImageNavigationItem.swift
//  okay-tees
//
//  Created by Chris Finn on 3/2/18.
//  Copyright © 2018 Finnovation LLC. All rights reserved.
//

import UIKit

class FixedImageNavigationItem: UINavigationItem {
    
    private let fixedImage : UIImage = UIImage(named: "logo.png")!
    private let imageView : UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 37.5))
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        imageView.contentMode = .scaleAspectFit
        imageView.image = fixedImage
        self.titleView = imageView
        
    }
}
