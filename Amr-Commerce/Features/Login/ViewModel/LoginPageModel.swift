//
//  LoginPageModel.swift
//  Amr-Commerce
//
//  Created by Amr Ali on 05/01/2022.
//

import SwiftUI

class LoginPageVM: ObservableObject {
    
    // MARK: - LoginProperties
    @Published var email        : String = ""
    @Published var password     : String = ""
    @Published var showPassword : Bool   = false
   
    // MARK: - LoginProperties
    @Published var reEnterPassword        : String = ""
    @Published var showReEnterPassword    : Bool   = false
    
    // MARK: - LoginCall
    
    func login(){
        
    }
    
    // MARK: - RegisterCall
    
    func register(){
        
    }
    
    // MARK: - ForgotPass
    
    func forgotPassword(){
        
    }
}
