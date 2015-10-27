//
//  RegisterViewController.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

//#import "RegisterViewController.h"
//#import <Parse/Parse.h>
//
//@interface RegisterViewController ()
//
//@property (weak, nonatomic) IBOutlet UITextField * usernameTextField;
//
//@property (weak, nonatomic) IBOutlet UITextField * emailTextField;
//
//@property (weak, nonatomic) IBOutlet UITextField * passwordTextField;



//@end
//
//@implementation RegisterViewController
//
//- (IBAction)register:(id)sender {
//    
//   
//    
//    
//        PFUser * user = [PFUser user];
//        user.username = self.usernameTextField.text;
//        user.password = self.passwordTextField.text;
//        user.email = self.emailTextField.text;
//    
//        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
//            
//            if (succeeded) {
//            
//                NSLog(@"signed up");
//                
//                UIStoryboard * mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//                UINavigationController * nc = [mainStoryboard instantiateInitialViewController];
//                
//                [UIApplication sharedApplication].windows[0].rootViewController = nc;
//
//            
//            }
//            
//        }];
//
//}
//
//- (IBAction)back:(id)sender {
//    
//    [self.navigationController popViewControllerAnimated:YES];
//    
//}
//
//@end
