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
    
    let gameover = UIImageView(image: nil)
    let button = UIButton(frame: CGRect(x: 300, y: 500, width: 80, height: 50))
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicBehavior : UIDynamicItemBehavior!
    var collisionBehavior : UICollisionBehavior!
    var gravityBehavior : UIGravityBehavior!
    
    var allbirds: [UIImageView] = []
    
    var starts = 20
    var startsTimer = Timer()
    var points = 0
    
    
    @objc func playButton (sender: UIButton){
        gameover.removeFromSuperview()
        button.removeFromSuperview()
        points = 0;
        for i in allbirds{
            i.removeFromSuperview()
        }
        viewDidLoad()
    }

    @IBOutlet weak var GameTimer: UIButton!
    
    


    @IBOutlet weak var plane: DraggedImageView!
    @IBOutlet weak var bird1: UIImageView!
    @IBOutlet weak var bird2: UIImageView!
    @IBOutlet weak var bird3: UIImageView!
    @IBOutlet weak var bird4: UIImageView!
    @IBOutlet weak var bird5: UIImageView!
    @IBOutlet weak var bird6: UIImageView!
    @IBOutlet weak var bird7: UIImageView!
    @IBOutlet weak var bird8: UIImageView!
    @IBOutlet weak var bird9: UIImageView!
    @IBOutlet weak var bird10: UIImageView!
    @IBOutlet weak var bird11: UIImageView!
    @IBOutlet weak var bird12: UIImageView!
    @IBOutlet weak var bird13: UIImageView!
    @IBOutlet weak var bird14: UIImageView!
    @IBOutlet weak var bird15: UIImageView!
    @IBOutlet weak var bird16: UIImageView!
    @IBOutlet weak var bird17: UIImageView!
    @IBOutlet weak var bird18: UIImageView!
    @IBOutlet weak var bird19: UIImageView!
    @IBOutlet weak var bird20: UIImageView!
    
    
    @IBOutlet weak var coin: UIImageView!
    @IBOutlet weak var coin1: UIImageView!
    @IBOutlet weak var coin2: UIImageView!
    @IBOutlet weak var coin3: UIImageView!
    @IBOutlet weak var coin4: UIImageView!
    @IBOutlet weak var coin5: UIImageView!
    
    @IBOutlet weak var roadimage: UIImageView!
    
    @IBOutlet weak var treeimage: UIImageView!
    
    @IBOutlet weak var cloudimage: UIImageView!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var replay: UIButton!
    
    let birdsArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    
    @objc func startGameTimer() {
        starts = starts - 1
        GameTimer.setTitle(String(starts),for : .normal)
        
        if starts == 0{
            startsTimer.invalidate()
        }
        
        startsTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (ViewController.startGameTimer),userInfo: nil, repeats: true)
        starts = 20
        GameTimer.setTitle(String(starts), for: .normal)
        
        replay.isHidden = true
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //plane.myDelegate = self
    
       // let EndsView = UIImageView(image: nil)
        
        
        
        //dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        //dynamicBehavior = UIDynamicItemBehavior(items: [])
        //collisionBehavior = UICollisionBehavior(items:[])
        
        /*for index in 0...19{
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
                
                self.collisionBehavior.addBoundary(withIdentifier: "birdimage" as NSCopying, for: UIBezierPath(rect: self.plane.frame))
                
               self.dynamicBehavior.addItem(fallingView)
               self.dynamicBehavior.addLinearVelocity(CGPoint(x: 250, y: 0), for: fallingView)
                self.collisionBehavior.addItem(fallingView)
                
                self.score.text = String(self.points)
                self.points = self.points + 1
            */
        
        bird1.frame = CGRect(x: 900, y: 100, width: 100, height: 100)
        bird2.frame = CGRect(x: 900, y: 200, width: 100, height: 100)
        bird3.frame = CGRect(x: 1320, y: 73, width: 100, height: 100)
        bird4.frame = CGRect(x: 1750, y: 20, width: 100, height: 100)
        bird5.frame = CGRect(x: 2170, y: 231, width: 100, height: 100)
        bird6.frame = CGRect(x: 2550, y: 152, width: 100, height: 100)
        bird7.frame = CGRect(x: 3000, y: 293, width: 100, height: 100)
        bird8.frame = CGRect(x: 3550, y: 24, width: 100, height: 100)
        bird9.frame = CGRect(x: 4090, y: 95, width: 100, height: 100)
        bird10.frame = CGRect(x: 4550, y: 250, width: 100, height: 100)
        bird11.frame = CGRect(x: 5050, y: 10, width: 100, height: 100)
        bird12.frame = CGRect(x: 5500, y: 190, width: 100, height: 100)
        bird13.frame = CGRect(x: 6050, y: 73, width: 100, height: 100)
        bird14.frame = CGRect(x: 6500, y: 204, width: 100, height: 100)
        bird15.frame = CGRect(x: 6840, y: 31, width: 100, height: 100)
        bird16.frame = CGRect(x: 7000, y: 152, width: 100, height: 100)
        bird17.frame = CGRect(x: 7250, y: 263, width: 100, height: 100)

        
        coin.frame = CGRect(x: 1600, y: 180, width: 70, height: 70)
        coin1.frame = CGRect(x: 2200, y: 20, width: 70, height: 70)
        coin2.frame = CGRect(x: 4200, y: 180, width: 70, height: 70)
        coin3.frame = CGRect(x: 5200, y: 200, width: 70, height: 70)
        coin4.frame = CGRect(x: 6100, y: 150, width: 70, height: 70)
        coin5.frame = CGRect(x: 6100, y: 150, width: 70, height: 70)
        
        plane.myDelegate = self
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        
        collisionBehavior = UICollisionBehavior (items: [bird4,bird5,bird6,bird7,bird8,bird9,bird10,bird11,bird12,bird13,bird14,bird15,bird16,coin,coin1,coin2,coin3])
        
        collisionBehavior.translatesReferenceBoundsIntoBoundary = false
        dynamicAnimator.addBehavior(collisionBehavior)
        dynamicBehavior = UIDynamicItemBehavior(items: [bird4,bird5,bird6,bird7,bird8,bird9,bird10,bird11,bird12,bird13,bird14,bird15,bird16,coin,coin1, coin2,coin3])
        
       /* bird1.removeFromSuperview()
        bird2.removeFromSuperview()
        bird3.removeFromSuperview()
        bird4.removeFromSuperview()
        bird5.removeFromSuperview()
        bird6.removeFromSuperview()
        */
        
        
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: bird1)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: bird2)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: bird3)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: bird4)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -450, y: 0), for: bird5)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -500, y: 0), for: bird6)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -550, y: 0), for: bird7)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird8)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird9)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird10)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird11)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: bird12)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -750, y: 0), for: bird13)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -750, y: 0), for: bird14)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -850, y: 0), for: bird15)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -800, y: 0), for: bird16)
        //self.dynamicBehavior.addLinearVelocity(CGPoint(x: -950, y: 0), for: bird17)
        
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: coin)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -420, y: 0), for: coin1)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: coin2)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: coin3)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: coin4)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: -750, y: 0), for: coin5)
        //self.dynamicBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: coin6)

        //coin.removeFromSuperview()
        dynamicAnimator.addBehavior(dynamicBehavior)
        
        dynamicBehavior.elasticity = 1;
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
        
        bird1.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird2.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird3.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird4.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird5.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird6.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird7.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird8.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird9.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird10.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird11.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird12.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird13.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird14.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird15.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird16.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird17.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird18.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird19.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
        bird20.image = UIImage.animatedImage(with: birdArray, duration: 0.6)
    
        
        
        
        
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
        
        plane.image = UIImage.animatedImage(with: planeArray, duration: 0.3)
    
        
    
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
        
        let when = DispatchTime.now() + 17
        
        DispatchQueue.main.asyncAfter(deadline: when){
            
            self.button.backgroundColor = .blue
            
            self.button.setTitle("REPLAY", for: [])
            
            self.button.addTarget(self, action: #selector(self.playButton), for: .touchUpInside)
            
            self.view.addSubview(self.button)
            
            
            self.gameover.image = UIImage(named: "game_over.jpg")
            
            self.gameover.frame = UIScreen.main.bounds
            
            self.view.addSubview(self.gameover)
            
            self.view.bringSubview(toFront: self.gameover)
            
            self.view.bringSubview(toFront: self.button)
            
        }
        
        
     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
}
