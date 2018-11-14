//
//  ViewController.swift
//  airplane
//
//  Created by hr17abb on 13/11/2018.
//  Copyright © 2018 hr17abb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roadimage: UIImageView!
    
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
    
    self.view.sendSubview(toBack:roadimage)
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

