//
//  PasswordManager.swift
//  OnePassword
//
//  Created by zoya me on 10/23/22.
//

import Foundation
import SwiftUI

class PasswordManager: ObservableObject {
    
    @Published var length = 4
    @Published var showPasteboard: Bool = false
    @Published var isPasswordCopied: Bool = false
    
    
    
    @Published var passwords1: String = ""
    @Published var passwords2: String = ""
    @Published var passwords3: String = ""
    @Published var passwords4: String = ""
    @Published var passwords5: String = ""
    @Published var passwords6: String = ""
    @Published var passwords7: String = ""
    @Published var passwords8: String = ""
    
    // for opacity
    @Published var opacity1: Bool = false
    @Published var opacity2: Bool = false
    @Published var opacity3: Bool = false
    @Published var opacity4: Bool = false
    @Published var opacity5: Bool = false
    @Published var opacity6: Bool = false
    @Published var opacity7: Bool = false
    @Published var opacity8: Bool = false
    
    func createPasswrod1() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords1 = compactPassword
            
        }
    }
    
    func createPasswrod2() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords2 = compactPassword
            
        }
    }
    
    func createPasswrod3() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords3 = compactPassword
            
        }
    }
    
    func createPasswrod4() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords4 = compactPassword
            
        }
    }
    
    func createPasswrod5() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords5 = compactPassword
            
        }
    }
    
    func createPasswrod6() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords6 = compactPassword
            
        }
    }
    
    func createPasswrod7() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords7 = compactPassword
            
        }
    }
    
    func createPasswrod8() {
        let password = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!£$%&?_*.#-1234567890"
        let compactPassword = String((0..<length).compactMap{ _ in password.randomElement() })
        
        
        withAnimation {
            passwords8 = compactPassword
            
        }
    }
}

