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
    let button = UIButton(frame: CGRect(x: 200, y:250, width: 80, height: 50))
    let gameover_1 = UIImageView(frame: CGRect(x: 20, y: 30, width: 20, height: 30))
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicBehavior : UIDynamicItemBehavior!
    var collisionBehavior : UICollisionBehavior!
    var gravityBehavior : UIGravityBehavior!
    var coinCollisionBehavior : UICollisionBehavior!
    
    var allbirds: [UIImageView] = []
    
    var starts = 20
    var startsTimer = Timer()
    var playerscore = 0
    
    @objc func playButton (sender: UIButton!){
        
        gameover.removeFromSuperview()
        button.removeFromSuperview()
        gameover_1.removeFromSuperview()
        //logo.removeFromSuperview()
        
        playerscore = 0;
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
    
    
    
    @IBOutlet weak var coin: UIImageView!
    @IBOutlet weak var coin1: UIImageView!
    @IBOutlet weak var coin2: UIImageView!
    @IBOutlet weak var coin3: UIImageView!
    
    
    @IBOutlet weak var roadimage: UIImageView!
    
    @IBOutlet weak var treeimage: UIImageView!
    
    @IBOutlet weak var cloudimage: UIImageView!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var points: UILabel!
    
    @IBOutlet weak var game_over: UIImageView!
    
    @IBOutlet weak var gameover1: UIImageView!
    
    @IBOutlet weak var logo: UILabel!
    
    let birdsArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    
    @objc func startGameTimer() {
        starts = starts - 1
        GameTimer.setTitle(String(starts),for : .normal)
        
        self.points.text = String(self.playerscore)
        self.playerscore = self.playerscore + 3
        
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
        
        
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicBehavior = UIDynamicItemBehavior(items: [])
        collisionBehavior = UICollisionBehavior(items:[])
        
      //self.logo.removeFromSuperview()
        
        bird1.frame = CGRect(x: 900, y: 100, width: 75, height: 75)
        bird2.frame = CGRect(x: 900, y: 200, width: 75, height: 75)
        bird3.frame = CGRect(x: 1320, y: 73, width: 75, height: 75)
        bird4.frame = CGRect(x: 1750, y: 20, width: 75, height: 75)
        bird5.frame = CGRect(x: 2170, y: 231, width: 75, height: 75)
        bird6.frame = CGRect(x: 2550, y: 152, width: 75, height: 75)
        bird7.frame = CGRect(x: 3000, y: 293, width: 75, height: 75)
        bird8.frame = CGRect(x: 3550, y: 24, width: 75, height: 75)
        bird9.frame = CGRect(x: 4090, y: 95, width: 75, height: 75)
        bird10.frame = CGRect(x: 4550, y: 250, width: 75, height: 75)
        bird11.frame = CGRect(x: 5050, y: 10, width: 75, height: 75)
        bird12.frame = CGRect(x: 5500, y: 190, width: 75, height: 75)
        bird13.frame = CGRect(x: 6050, y: 73, width: 75, height: 75)
        bird14.frame = CGRect(x: 6500, y: 204, width: 75, height: 75)
        bird15.frame = CGRect(x: 6840, y: 31, width: 75, height: 75)
        bird16.frame = CGRect(x: 7000, y: 152, width: 75, height: 75)
        
        
        coin.frame = CGRect(x: 1600, y: 180, width: 50, height: 50)
        coin1.frame = CGRect(x: 2200, y: 20, width: 50, height: 50)
        coin2.frame = CGRect(x: 4200, y: 180, width: 50, height: 50)
        coin3.frame = CGRect(x: 5200, y: 200, width: 50, height: 50)
        //coin4.frame = CGRect(x: 6100, y: 150, width: 50, height: 50)
        //coin5.frame = CGRect(x: 6100, y: 150, width: 50, height: 50)
        
        plane.myDelegate = self
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        
        
        collisionBehavior = UICollisionBehavior (items: [bird2,bird3,bird4,bird5,bird6,bird8,bird9,bird10,bird11,bird12,bird13,bird14,bird15,coin,coin1,coin2,coin3])
        
        coinCollisionBehavior = UICollisionBehavior (items: [coin,coin1,coin2,coin3])
        
        //coinCollisionBehavior.translatesReferenceBoundsIntoBoundary = false
        collisionBehavior.translatesReferenceBoundsIntoBoundary = false
        dynamicAnimator.addBehavior(collisionBehavior)
        dynamicBehavior = UIDynamicItemBehavior(items: [bird2,bird3,bird4,bird5,bird6,bird8,bird9,bird10,bird11,bird12,bird13,bird14,bird15,coin,coin1,coin2,coin3])
        
        /*self.coinCollisionBehavior.action = {
            for coinViewArray in self.loadView {
                if self.plane.frame.intersects(coinView.frame){
                    coinView.removeFromSuperview()
                }
            }
        }
        
        var coinViewArray : [UIImage]!
        
        coinViewArray = [UIImage(named: "coin.png")!,
                     UIImage(named: "coin1.png")!,
                     UIImage(named: "coin2.png")!,
                     UIImage(named: "coin3.png")!,]*/
        
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
        //self.dynamicBehavior.addLinearVelocity(CGPoint(x: -650, y: 0), for: coin4)
      //  self.dynamicBehavior.addLinearVelocity(CGPoint(x: -750, y: 0), for: coin5)
        //self.dynamicBehavior.addLinearVelocity(CGPoint(x: -350, y: 0), for: coin6)

        //coin.removeFromSuperview()
        dynamicAnimator.addBehavior(dynamicBehavior)
        
        
        
        //dynamicBehavior.elasticity = 1;
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
        
        let when = DispatchTime.now() + 20
        
        DispatchQueue.main.asyncAfter(deadline: when){
            
            self.button.backgroundColor = .blue
            self.button.setTitle("Try Again", for: [])
            self.button.addTarget(self, action: #selector(self.playButton), for: .touchUpInside)
            self.view.addSubview(self.button)
            
            self.view.addSubview(self.score)
            
           
            //self.view.addSubview(self.logo)
            
            self.view.addSubview(self.points)
            
            self.gameover.image = UIImage(named: "game_over.jpg")
            self.gameover.frame = UIScreen.main.bounds
            self.view.addSubview(self.gameover)
            self.view.bringSubview(toFront: self.gameover)
            
            self.gameover_1.image = UIImage(named: "gameover1.png")
            self.gameover_1.frame = UIScreen.main.bounds
            self.view.addSubview(self.gameover_1)
            self.view.bringSubview(toFront: self.gameover_1)
            
            self.view.bringSubview(toFront: self.button)
            
            self.view.bringSubview(toFront: self.points)
            
            self.view.bringSubview(toFront: self.score)
            
          //  self.view.bringSubview(toFront: self.logo)

            
        }
        
     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
}
