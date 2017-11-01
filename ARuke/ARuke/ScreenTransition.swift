//
//  ScreenTransition.swift
//  ARuke
//
//  Created by e155707 on 2017/11/02.
//  Copyright © 2017年 Ryukyu. All rights reserved.
//
import UIKit
import SceneKit
import ARKit

class ScreenTransition{
    
    func fromEventCotrollerToMap(){
        let map:UIViewController = MapConroller()
        let storyboard: UIStoryboard = UIStoryboard(name:"Map",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Map") as! MapConroller
        map.present(next as UIViewController, animated: true,completion: nil)
        print("Map")
    }
    
    func fromMaptoEventCotroller(){
        let event:UIViewController = EventController()
        let storyboard: UIStoryboard = UIStoryboard(name:"EventController",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "EventController") as! EventController
        event.present(next as UIViewController, animated: true,completion: nil)
        print("Event")
    }
    
    
}
