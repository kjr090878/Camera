//
//  RegisterViewController.swift
//  Selfie
//
//  Created by Kelly Robinson on 10/26/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import Foundation

import UIKit

import Parse


class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailViewController: UITextField!
    
    @IBOutlet weak var passwordViewController: UITextField!
    
    @IBOutlet weak var usernameViewController: UITextField!
    
    @IBAction func register(sender: AnyObject) {
        
        let user = PFUser()
        
        user.username = self.usernameViewController.text
        user.password = self.passwordViewController.text
        user.email = self.emailViewController.text
        
        user.signUpInBackgroundWithBlock { (succeeded: Bool, error) -> Void in
        
            if error == nil {
            
            
            } else {
                
                print("signed up")
                
                let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                
                
                let nc = mainStoryboard.instantiateInitialViewController() as! UINavigationController
                
                
                UIApplication.sharedApplication().windows[0].rootViewController = nc
                
            }
        
        }
        
        
    }
    
    @IBAction func back(sender: AnyObject) {
        
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    
}