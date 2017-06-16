//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        
        // Implement this function!
        
        var answer = ""
        
        for (key, value) in trivia {
            let capital = Array(value.lowercased().characters)
            let state = Array(key.lowercased().characters)
            
            let characterCheck = state.filter{ capital.contains($0)}
            print(characterCheck)
            
            if characterCheck.isEmpty {
                answer = key
            }
        }
        return answer
        
    }
    
    
    
    
}

