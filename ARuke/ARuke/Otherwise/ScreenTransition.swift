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

extension TitleController{
    func fromTitleToMake(){
        let storyboard: UIStoryboard = UIStoryboard(name:"Make",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Make") as! MakeController
        present(next as UIViewController, animated: true,completion: nil)
        print("Make")
    }
    
    func fromTitleToMainMenu(){
        let storyboard: UIStoryboard = UIStoryboard(name:"MainMenu",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "MainMenu") as! MainMenuController
        present(next as UIViewController, animated: true,completion: nil)
        print("MainMenu")
    }
}

extension MainMenuHomeController{
    func fromHomeToQuest(){
        let storyboard: UIStoryboard = UIStoryboard(name:"MainMenuQuest",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "MainMenuQuest") as! MainMenuQuestController
        present(next as UIViewController, animated: true,completion: nil)
        print("MainMenuQuest")
    }
}

extension MainMenuQuestController{
    func fromQuestToHome(){
        let storyboard: UIStoryboard = UIStoryboard(name:"MainMenuHome",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "MainMenuHome") as! MainMenuHomeController
        present(next as UIViewController, animated: true,completion: nil)
        print("MainMenuHome")
    }
}

extension StartController{
    @objc func fromStartToMap(){
        let storyboard: UIStoryboard = UIStoryboard(name:"Map",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Map") as! MapController
        present(next as UIViewController, animated: true,completion: nil)
        print("Map")
    }
}

extension MapController{
    func fromMaptoWalking(){
        let storyboard: UIStoryboard = UIStoryboard(name:"Walking",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Walking") as! WalkingController
        next.selectElementLocation = selectElementLocation
        present(next as UIViewController, animated: true,completion: nil)
        print("Walking")
    }
}

extension WalkingController{
    func formWalkingToJudge(_ errorDistance:Double){
        let storyboard: UIStoryboard = UIStoryboard(name:"Judge",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Judge") as! JudgeController
        next.errorDistance = errorDistance
        present(next as UIViewController, animated: true,completion: nil)
        print("Judge")
    }
}

extension JudgeController{
    @objc func fromJudgeToMap(){
        let storyboard: UIStoryboard = UIStoryboard(name:"Map",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Map") as! MapController
        present(next as UIViewController, animated: true,completion: nil)
        print("Map")
    }
}

extension EventController{
    
    func fromEventCotrollerToMap(){
        let storyboard: UIStoryboard = UIStoryboard(name:"Map",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Map") as! MapController
        present(next as UIViewController, animated: true,completion: nil)
        print("Map")
    }
}

extension MapController{
    
    func fromMaptoEventCotroller(){
        let storyboard: UIStoryboard = UIStoryboard(name:"EventController",bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "EventController") as! EventController
        present(next as UIViewController, animated: true,completion: nil)
        print("Event")
    }
    
}
