//
//  LoginViewController.swift
//  Selfie
//
//  Created by Kelly Robinson on 10/26/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import Foundation

import UIKit

import Parse

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!
    
   
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func login(sender: AnyObject) {
        
        
//        [PFUser logInWithUsernameInBackground:self.usernametextField.text password: self.passwordTextField.text block:^(PFUser * _Nullable user, NSError * _Nullable error) {
        
        PFUser.logInWithUsernameInBackground(username.text!, password: password.text!) { (user, error) -> Void in
            
            //        if (user != nil) {
            //
            //            NSLog(@"logged in");
            //
            //            UIStoryboard * mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            //            UINavigationController * nc = [mainStoryboard instantiateInitialViewController];
            //
            //            [UIApplication sharedApplication].windows[0].rootViewController = nc;
            //
            //
            //        }
            
            
        }

        
    }
    
    @IBAction func back(sender: AnyObject) {
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
}

