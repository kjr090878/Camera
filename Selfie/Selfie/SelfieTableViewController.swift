//
//  SelfieTableViewController.swift
//  Selfie
//
//  Created by Kelly Robinson on 10/28/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

import Parse

class SelfieTableViewController: UITableViewController {
    
    var selfies = NSMutableArray()
    
    func logout() {
        
     PFUser.logOut()
        
        var userStoryboard = UIStoryboard(name: "User", bundle: nil)
        
        var nc: UINavigationController = userStoryboard.instantiateInitialViewController() as! UINavigationController
        
        //    UINavigationController * nc = [userStoryboard instantiateInitialViewController];
      
        UIApplication.sharedApplication().windows[0].rootViewController = nc
        
        //    [UIApplication sharedApplication].windows[0].rootViewController = nc;
        
    }
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var logoutButton = UIBarButtonItem(title: "logout", style: .Plain, target: self, action: ("logout:"))
//        
//          UIBarButtonItem * logoutButton = [[UIBarButtonItem alloc] initWithTitle:@"logout" style:UIBarButtonItemStylePlain target:self action:@selector(logout)];
        
        self.navigationItem.leftBarButtonItem = logoutButton
        
        //    self.navigationItem.leftBarButtonItem = logoutButton;
        
        print("",self.navigationController?.navigationItem)
        print("",self.navigationItem)
        
        //    NSLog(@"%@",self.navigationController.navigationItem);
        //    NSLog(@"%@",self.navigationItem);
        
      
        selfies = []
        
        print("viewDidLoad")
        //
        //    selfies = [@[] mutableCopy];
        //
        //    NSLog(@"viewDidLoad");
        
        var selfieQuery: PFQuery = PFQuery(className: "Selfie")
        //
        //    PFQuery * selfieQuery = [PFQuery queryWithClassName:@"Selfie"];
        
        
        
        selfieQuery.findObjectsInBackgroundWithBlock { (objects: [AnyObject]?, error: NSError?) -> Void in
            
            for selfie in objects(PFObject
            
        }
        
//        [selfieQuery findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
            //
            //        for (PFObject * selfie in objects) {
            //            NSLog(@"%@",selfie);
            //
            //
            //            [selfies addObject:selfie];
        
        
            //        }
        
//            /        [self.tableView reloadData];
        //
        //    }];
        //
        //    
        //    
        //    
        //}
        


    }

    

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */


}
