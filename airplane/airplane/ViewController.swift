//
//  ViewController.swift
//  airplane
//
//  Created by hr17abb on 13/11/2018.
//  Copyright © 2018 hr17abb. All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func changeSomething()
}

class ViewController: UIViewController, subviewDelegate {
    
    func changeSomething() {
        collisionBehavior.removeAllBoundaries()
        collisionBehavior.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: plane.frame))
    }
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicBehavior : UIDynamicItemBehavior!
    var collisionBehavior : UICollisionBehavior!
    var gravityBehavior : UIGravityBehavior!
    
    
    
    @IBOutlet weak var plane: DraggedImageView!
    
    
    @IBOutlet weak var roadimage: UIImageView!
    
    @IBOutlet weak var treeimage: UIImageView!
    
    @IBOutlet weak var cloudimage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    var imageArray : [UIImage]!
    
    imageArray = [UIImage(named: "road1.png")!,
    UIImage(named: "road2.png")!,
    UIImage(named: "road3.png")!,
    UIImage(named: "road4.png")!,
    UIImage(named: "road5.png")!,
    UIImage(named: "road6.png")!,
    UIImage(named: "road7.png")!,
    UIImage(named: "road8.png")!,
    UIImage(named: "road9.png")!,
    UIImage(named: "road10.png")!,
    UIImage(named: "road11.png")!,
    UIImage(named: "road12.png")!,
    UIImage(named: "road13.png")!,
    UIImage(named: "road14.png")!,
    UIImage(named: "road15.png")!,
    UIImage(named: "road16.png")!,
    UIImage(named: "road17.png")!,
    UIImage(named: "road18.png")!,
    UIImage(named: "road19.png")!]
    
        roadimage.image = UIImage.animatedImage(with: imageArray, duration: 1)
    
    roadimage.frame = UIScreen.main.bounds
    
    //self.view.sendSubview(toBack:roadimage)
        
        var treeArray : [UIImage]!
        
        treeArray = [UIImage(named: "tree1.png")!,
                      UIImage(named: "tree2.png")!,
                      UIImage(named: "tree3.png")!,
                      UIImage(named: "tree4.png")!,
                      UIImage(named: "tree5.png")!,
                      UIImage(named: "tree6.png")!,
                      UIImage(named: "tree7.png")!,
                      UIImage(named: "tree8.png")!,
                      UIImage(named: "tree9.png")!,
                      UIImage(named: "tree10.png")!,
                      UIImage(named: "tree11.png")!,
                      UIImage(named: "tree12.png")!,
                      UIImage(named: "road13.png")!,
                      UIImage(named: "road14.png")!,
                      UIImage(named: "tree15.png")!,
                      UIImage(named: "tree16.png")!,
                      UIImage(named: "tree17.png")!,]
        
        treeimage.image = UIImage.animatedImage(with: treeArray, duration: 3)
        
        
        
        
        var cloudArray : [UIImage]!
        
        cloudArray = [UIImage(named: "cloud.png")!,
                     UIImage(named: "cloud2.png")!,]
        
        cloudimage.image = UIImage.animatedImage(with: cloudArray, duration: 10)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

