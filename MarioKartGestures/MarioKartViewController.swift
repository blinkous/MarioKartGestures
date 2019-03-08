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
    
    
    
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        // In order to drag the kart around we need the location
        let location = sender.location(in: view)
//        print("Location: x: \(location.x), y: \(location.y)")

        // We will use the location to move the kart
        let kartView = sender.view!
        kartView.center = location
    }
    
    
    @IBAction func didPinchKart(_ sender: UIPinchGestureRecognizer) {
    }
    
}
