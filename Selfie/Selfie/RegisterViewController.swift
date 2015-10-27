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
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        func myMethod() {
            let user = PFUser()
            user.username = "myUsername"
            user.password = "myPassword"
            user.email = "email@example.com"
            
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool, error: NSError?) -> Void in
                if let error = error {
                    let errorString = error.userInfo["error"] as? NSString
                    print(errorString)
                    
                    // Show the errorString somewhere and let the user try again.
                } else {
                    // Hooray! Let them use the app now.
                }
            }
        }
        
        PFUser.logInWithUsernameInBackground("myname", password:"mypass") {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
            } else {
                // The login failed. Check error to see why.
            }
        }
        
    }
    
    
    @IBAction func next(sender: AnyObject) {
    }
    
    
    @IBAction func back(sender: AnyObject) {
        
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    
}