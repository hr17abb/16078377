//
//  DraggedImageView.swift
//  airplane
//
//  Created by hr17abb on 19/11/2018.
//  Copyright © 2018 hr17abb. All rights reserved.
//

import UIKit

class DraggedImageView: UIImageView {

    var myDelegate : subviewDelegate?
    
    var startLocation : CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocationn = touches.first?.location(in: self)
        let dx = currentLocationn!.x - startLocation!.x
        let dy = currentLocationn!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        self.myDelegate?.changeSomething()
    }
    
}
