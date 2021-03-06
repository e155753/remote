//
//  WalkingController.swift
//  ARuke
//
//  Created by e155707 on 2017/11/20.
//  Copyright © 2017年 Ryukyu. All rights reserved.
//

import UIKit
import SceneKit
import ARKit
import GoogleMaps

class WalkingController: UIViewController, ARSCNViewDelegate, CLLocationManagerDelegate{
    
    @IBOutlet weak var WalkingDescriptionLabel: UILabel!
    @IBOutlet weak var characterDisplay: SCNView!
    var selectElementLocation: CLLocation!
    var errorDistance:Double = 0.0
    let locationManager = CLLocationManager()
    
    @IBAction func battleButton(_ sender: Any) {
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
    }
    let character:ManageCharacter = ManageCharacter()
    var characterScene:SCNScene = SCNScene()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        characterScene = character.managerCamera()
        
        character.managerCharacter(characterScene)
        characterDisplay.scene = characterScene
        
        WalkingDescriptionLabel.text = "指定した　チェックポイントに向かって、\n戦いに　いどむんやで\n\n...歩きスマホは　アカンやで！！"
        WalkingDescriptionLabel.numberOfLines = 0
    }
    
    
    // 自分の位置を呼び出すメソッド.
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location: CLLocation = locations.last else { return }
        
        errorDistance = location.distance(from: selectElementLocation)
        self.formWalkingToJudge(errorDistance)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}



