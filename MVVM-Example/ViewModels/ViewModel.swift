//
//  ViewModel.swift
//  MVVM-Example
//
//  Created by Vitalii Homoniuk on 20.11.2022.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userButtonPressed(login: String, password: String) {
        
        for i in 0..<User.logins.count {
            if User.logins[i].login! == login && User.logins[i].password! == password {
                statusText.value = "You succesfully logged in."
                statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                print(statusText.value)
            }
        }
    }
}


