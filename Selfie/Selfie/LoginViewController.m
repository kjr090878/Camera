//
//  LoginViewController.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

//#import "LoginViewController.h"
//#import <Parse/Parse.h>
//
//@interface LoginViewController ()
////
////@property (weak, nonatomic) IBOutlet UITextField *usernametextField;
////
////@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
////
////- (IBAction)register:(id)sender;
//
//
//@end
//
//@implementation LoginViewController



//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//   
//    
//  
//    
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//
//- (IBAction)register:(id)sender {
//
//    [PFUser logInWithUsernameInBackground:self.usernametextField.text password: self.passwordTextField.text block:^(PFUser * _Nullable user, NSError * _Nullable error) {
//
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
//        
//        
//    }];
//    
//    
//
//}
//
//
//- (IBAction)back:(id)sender {
//    
//    [self.navigationController popViewControllerAnimated:YES];
//}
//
//
//@end
