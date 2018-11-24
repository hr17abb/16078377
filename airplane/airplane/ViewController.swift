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
    
    var birdadd: [UIImageView] = []
    
    var starts = 20
    var startsTimer = Timer()
    var points = 0


    @IBOutlet weak var GameTimer: UIButton!
    
    
    @IBOutlet weak var plane: DraggedImageView!
    
    @IBOutlet weak var birdimage: UIImageView!
    
    @IBOutlet weak var roadimage: UIImageView!
    
    @IBOutlet weak var treeimage: UIImageView!
    
    @IBOutlet weak var cloudimage: UIImageView!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var replay: UIButton!
    
    @IBAction func replayButton(_ sender: UIButton) {
    
    }
    let birdsArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    
    @objc func startGameTimer() {
        starts = starts - 1
        GameTimer.setTitle(String(starts),for : .normal)
        
        if starts == 0{
            startsTimer.invalidate()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    
       // let EndsView = UIImageView(image: nil)
        
        
        
        startsTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (ViewController.startGameTimer),userInfo: nil, repeats: true)
        starts = 20
        GameTimer.setTitle(String(starts), for: .normal)
        
        replay.isHidden = true
        
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicBehavior = UIDynamicItemBehavior(items: [])
        collisionBehavior = UICollisionBehavior(items:[])
        
        for index in 0...19{
            let birdsDelay = Double(self.birdsArray[index])
            
            let when = DispatchTime.now() + birdsDelay
            
            DispatchQueue.main.asyncAfter(deadline: when)
            {
                let falling = arc4random_uniform(10)
                let fallingView = UIImageView (image: nil)
                let displayWidth = UIScreen.main.bounds.height
                
                switch falling {
                    
                case 1: fallingView.image = UIImage(named: "bird5.png")
                case 2: fallingView.image = UIImage(named: "bird3.png")
                case 3: fallingView.image = UIImage(named: "bird4.png")
                case 4: fallingView.image = UIImage(named: "bird7.png")
                case 5: fallingView.image = UIImage(named: "bird9.png")
                default:
                    fallingView.image = UIImage(named: "bird1.png")
                }
                
                fallingView.frame = CGRect(x:Int(arc4random_uniform(UInt32(displayWidth))), y:40, width: 0, height: 80)
                self.view.addSubview(fallingView)
                self.view.bringSubview(toFront: fallingView)
                
                self.collisionBehavior.addBoundary(withIdentifier: "birdimage" as NSCopying, for: UIBezierPath(rect: self.birdimage.frame))
                
                self.dynamicBehavior.addItem(fallingView)
                self.dynamicBehavior.addLinearVelocity(CGPoint(x: 250, y: 0), for: fallingView)
                self.collisionBehavior.addItem(fallingView)
                
                self.score.text = String(self.points)
                self.points = self.points + 1
            }
            
        }
        
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
    
        roadimage.image = UIImage.animatedImage(with: imageArray, duration: 0.3)
    
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
                      UIImage(named: "tree13.png")!,
                      UIImage(named: "tree14.png")!,
                      UIImage(named: "tree15.png")!,
                      UIImage(named: "tree16.png")!,
                      UIImage(named: "tree17.png")!,]
        
        treeimage.image = UIImage.animatedImage(with: treeArray, duration: 1)
        
        
        var cloudArray : [UIImage]!
        
        cloudArray = [UIImage(named: "cloud.png")!,
                     UIImage(named: "cloud2.png")!,]
        
        cloudimage.image = UIImage.animatedImage(with: cloudArray, duration: 10)
        
        
        var birdArray : [UIImage]!
        
        birdArray = [UIImage(named: "bird1.png")!,
                     UIImage(named: "bird2.png")!,
                     UIImage(named: "bird3.png")!,
                     UIImage(named: "bird4.png")!,
                     UIImage(named: "bird5.png")!,
                     UIImage(named: "bird6.png")!,
                     UIImage(named: "bird7.png")!,
                     UIImage(named: "bird8.png")!,
                     UIImage(named: "bird9.png")!,
                     UIImage(named: "bird10.png")!,]
        
        birdimage.image = UIImage.animatedImage(with: birdArray, duration: 1)
     
        
        var planeArray : [UIImage]!
        
        planeArray = [UIImage(named: "plane1.png")!,
                      UIImage(named: "plane2.png")!,
                      UIImage(named: "plane3.png")!,
                      UIImage(named: "plane4.png")!,
                      UIImage(named: "plane5.png")!,
                      UIImage(named: "plane6.png")!,
                      UIImage(named: "plane7.png")!,
                      UIImage(named: "plane8.png")!,
                      UIImage(named: "plane9.png")!,
                      UIImage(named: "plane10.png")!,
                      UIImage(named: "plane11.png")!,
                      UIImage(named: "plane12.png")!,]
        
        plane.image = UIImage.animatedImage(with: planeArray, duration: 0.3)    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

