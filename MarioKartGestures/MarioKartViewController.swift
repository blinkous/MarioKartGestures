//
//  MarioKartViewController.swift
//  MarioKartGestures
//
//  Created by stargaze on 3/8/19.
//  Copyright © 2019 blinkous. All rights reserved.
//

import UIKit

class MarioKartViewController: UIViewController {
    @IBOutlet weak var kartView0: UIImageView!
    @IBOutlet weak var kartView1: UIImageView!
    @IBOutlet weak var kartView2: UIImageView!
    @IBOutlet weak var kartView3: UIImageView!
    @IBOutlet weak var kartView4: UIImageView!
    
    // Store the location of each image
    var startingPointKartView0 = CGPoint()
    var startingPointKartView1 = CGPoint()
    var startingPointKartView2 = CGPoint()
    var startingPointKartView3 = CGPoint()
    var startingPointKartView4 = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startingPointKartView0 = kartView0.center
        startingPointKartView1 = kartView1.center
        startingPointKartView2 = kartView2.center
        startingPointKartView3 = kartView3.center
        startingPointKartView4 = kartView4.center
    }
    
    
    // Move the kart
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        // In order to drag the kart around we need the location
        let location = sender.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")

        // We will use the location to move the kart
        let kartView = sender.view!
        kartView.center = location
    }
    
    // Scale the kart
    @IBAction func didPinchKart(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        print("scale: \(scale)")
        
        // Scale the kart
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)

    }
    
    //Rotate the kart
    @IBAction func didRotateKart(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        print("rotation: \(rotation)")
        
        // Rotate the kart
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)

    }
    
    // Double Tap the kart to animate it and send it off screen
    @IBAction func didTapKartVIew(_ sender: UITapGestureRecognizer) {
        print("Double tap recognized")
        
        // When the user double taps the kart, sent it 50 to the right
        let kartView = sender.view!
//        kartView.center.x += 50
        
        // Closure is a block of code aka function that runs as a paramter
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 400
        }

    }
    
    // Reset the kart positions
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        
        // When you're in a closure, you need to insert to prepend self
        
        UIView.animate(withDuration: 0.8) {
            self.kartView0.center = self.startingPointKartView0
            self.kartView1.center = self.startingPointKartView1
            self.kartView2.center = self.startingPointKartView2
            self.kartView3.center = self.startingPointKartView3
            self.kartView4.center = self.startingPointKartView4
            
            // Resetting the images
            self.kartView0.transform = CGAffineTransform.identity
            self.kartView1.transform = CGAffineTransform.identity
            self.kartView2.transform = CGAffineTransform.identity
            self.kartView3.transform = CGAffineTransform.identity
            self.kartView4.transform = CGAffineTransform.identity
        }
    }
    
}
