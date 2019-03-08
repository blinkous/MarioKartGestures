//
//  MarioKartViewController.swift
//  MarioKartGestures
//
//  Created by stargaze on 3/8/19.
//  Copyright © 2019 blinkous. All rights reserved.
//

import UIKit

class MarioKartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    // Tapped the kart to animate it
    @IBAction func didTapKartVIew(_ sender: UITapGestureRecognizer) {
        
    }
}
