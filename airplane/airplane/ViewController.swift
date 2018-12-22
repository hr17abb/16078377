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
    
    //var starts = 20
    //var startsTimer = 0
    var points = 0
    var starts = 0;
    var Timer = 20;
    
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
    
    @IBOutlet weak var coin: UIImageView!
    
    @IBOutlet weak var roadimage: UIImageView!
    
    @IBOutlet weak var treeimage: UIImageView!
    
    @IBOutlet weak var cloudimage: UIImageView!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var replay: UIButton!
    
    
    
    /*let birdsArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    
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
    
}*/
    
    
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
            
            
        }*/
        
        let random = arc4random_uniform(0) + 220
        let random1 = arc4random_uniform(0) + 224
        let random2 = arc4random_uniform(0) + 239
        let random3 = arc4random_uniform(0) + 280
        let random4 = arc4random_uniform(0) + 330
        let random5 = arc4random_uniform(0) + 330
        let random6 = arc4random_uniform(00) + 400
        let random7 = arc4random_uniform(0) + 400
        let random8 = arc4random_uniform(0) + 400
        let random9 = arc4random_uniform(0) + 450
        let random10 = arc4random_uniform(0) + 550
        let random11 = arc4random_uniform(0) + 650
        let random12 = arc4random_uniform(0) + 650
        let random13 = arc4random_uniform(0) + 650
        let random14 = arc4random_uniform(0) + 650
        let random15 = arc4random_uniform(0) + 650
        let random16 = arc4random_uniform(0) + 680
        let random17 = arc4random_uniform(0) + 710
        let random18 = arc4random_uniform(0) + 710
        let random19 = arc4random_uniform(0) + 710
        let random20 = arc4random_uniform(0) + 740
        let random21 = arc4random_uniform(0) + 740
        let random22 = arc4random_uniform(0) + 740
        let random23 = arc4random_uniform(0) + 900
        let random24 = arc4random_uniform(0) + 980
        let random25 = arc4random_uniform(0) + 980
        let random26 = arc4random_uniform(0) + 980
        let random27 = arc4random_uniform(0) + 980
        let random28 = arc4random_uniform(0) + 980
        let random29 = arc4random_uniform(0) + 980
        let random30 = arc4random_uniform(0) + 980
        let random31 = arc4random_uniform(0) + 980
        let random32 = arc4random_uniform(0) + 980
        let random33 = arc4random_uniform(0) + 980
        let random34 = arc4random_uniform(0) + 1150
        let random35 = arc4random_uniform(0) + 1150
        let random36 = arc4random_uniform(0) + 1150
        let random37 = arc4random_uniform(0) + 1150
        let random38 = arc4random_uniform(0) + 1150
        let random39 = arc4random_uniform(0) + 1150
        let random40 = arc4random_uniform(0) + 1400
        
        let randomx = arc4random_uniform(198) + 47
        let randomx1 = arc4random_uniform(198) + 47
        let randomx2 = arc4random_uniform(198) + 47
        let randomx3 = arc4random_uniform(198) + 47
        let randomx4 = arc4random_uniform(99) + 47
        let randomx5 = randomx4 + 40
        let randomx6 = arc4random_uniform(40) + 125
        let randomx7 = randomx6 + 40
        let randomx8 = randomx7 + 40
        let randomx9 = arc4random_uniform(198) + 47
        let randomx10 = arc4random_uniform(198) + 47
        let randomx11 = arc4random_uniform(0) + 47
        let randomx12 = randomx11 + 38
        let randomx13 = randomx12 + 38
        let randomx14 = randomx13 + 38
        let randomx15 = randomx14 + 38
        let randomx16 = arc4random_uniform(35) + 210
        let randomx17 = arc4random_uniform(39) + 125
        let randomx18 = randomx17 + 45
        let randomx19 = randomx18 + 45
        let randomx20 = arc4random_uniform(30) + 47
        let randomx21 = arc4random_uniform(30) + 115
        let randomx22 = arc4random_uniform(30) + 210
        let randomx23 = arc4random_uniform(198) + 47
        let randomx24 = arc4random_uniform(0) + 47
        let randomx25 = arc4random_uniform(0) + 122
        let randomx26 = arc4random_uniform(0) + 177
        let randomx27 = arc4random_uniform(0) + 232
        let randomx28 = arc4random_uniform(0) + 47
        let randomx29 = randomx28 + 30
        let randomx30 = randomx29 + 30
        let randomx31 = randomx30 + 30
        let randomx32 = randomx31 + 30
        let randomx33 = randomx32 + 30
        let randomx34 = arc4random_uniform(198) + 47
        let randomx35 = arc4random_uniform(198) + 47
        let randomx36 = arc4random_uniform(198) + 47
        let randomx37 = arc4random_uniform(198) + 47
        let randomx38 = arc4random_uniform(198) + 47
        let randomx39 = arc4random_uniform(198) + 47
        let randomx40 = arc4random_uniform(0) + 54
        
        bird1.frame = CGRect(x: -250, y:Int(randomx), width:100, height: 100)
        bird2.frame = CGRect(x: -300, y:Int(randomx1), width:100, height: 100)
        bird3.frame = CGRect(x: -350, y:Int(randomx2), width:100, height: 100)
        bird4.frame = CGRect(x: -700, y:Int(randomx3), width:100, height: 100)
        bird5.frame = CGRect(x: -1000, y:Int(randomx4), width:100, height: 100)
        bird6.frame = CGRect(x: -1030, y:Int(randomx5), width:100, height: 100)
        bird7.frame = CGRect(x: -1450, y:Int(randomx6), width:100, height: 100)
        bird8.frame = CGRect(x: -1450, y:Int(randomx7), width:100, height: 100)
        bird9.frame = CGRect(x: -1800, y:Int(randomx8), width:100, height: 100)
        bird10.frame = CGRect(x: -2400, y: Int(randomx9), width:100, height: 100)
        
        coin.frame = CGRect(x: -250, y: Int(random3), width: 75, height: 75)
        
        plane.myDelegate = self
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        
        collisionBehavior = UICollisionBehavior (items: [bird1,bird2,bird3,bird4,bird5,bird6,bird7,bird8,bird9,bird10,coin])
        
        collisionBehavior.translatesReferenceBoundsIntoBoundary = false
        dynamicAnimator.addBehavior(collisionBehavior)
        dynamicBehavior = UIDynamicItemBehavior(items: [bird1,bird2,bird3,bird4,bird5,bird6,bird7,bird8,bird9,bird10,coin])
        
       /* bird1.removeFromSuperview()
        bird2.removeFromSuperview()
        bird3.removeFromSuperview()
        bird4.removeFromSuperview()
        bird5.removeFromSuperview()
        bird6.removeFromSuperview()
        */
        //dynamicBehavior.elasticity = 0.8;
        
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random), y: 0), for: bird1)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random1), y: 0), for: bird2)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random2), y: 0), for: bird3)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random3), y: 0), for: bird4)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random4), y: 0), for: bird5)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random5), y: 0), for: bird6)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random6), y: 0), for: bird7)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random7), y: 0), for: bird8)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random8), y: 0), for: bird8)
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random9), y: 0), for: bird9)
        
        self.dynamicBehavior.addLinearVelocity(CGPoint(x: Int(random3), y: 0), for: coin)
        
        //coin.removeFromSuperview()
        dynamicAnimator.addBehavior(dynamicBehavior)
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
