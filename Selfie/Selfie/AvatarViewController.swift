//
//  AvatarViewController.swift
//  Selfie
//
//  Created by Kelly Robinson on 10/26/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import Foundation

import UIKit

import Parse


class AvatarViewController: UIViewController {
    
    
    @IBOutlet weak var avatarImageViewController: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func back(sender: AnyObject) {
        
        //    [self.navigationController popViewControllerAnimated:YES];
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    
    @IBAction func done(sender: AnyObject) {
    }
    
}