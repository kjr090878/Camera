////
////  SubmitViewController.m
////  Camera
////
////  Created by Kelly Robinson on 10/19/15.
////  Copyright © 2015 Kelly Robinson. All rights reserved.
////
//
//#import "SubmitViewController.h"
//#import <Parse/Parse.h>
//
//@interface SubmitViewController ()
//
//@property (weak, nonatomic) IBOutlet UITextView *captionTextView;
//
//@property (weak, nonatomic) IBOutlet UIImageView *filteredImageView;
//
//@end
//
//@implementation SubmitViewController
//
//
//- (void)viewWillDisappear:(BOOL)animated {
//    
//    self.filteredImageView.image = self.filteredImage;
//    
//}
//
//
//
//- (IBAction)submitSelfie:(id)sender {
//    
//    PFObject * selfie = [PFObject objectWithClassName:@"Selfie"];
//    
//    // turn UIImage iunto NSData (basically getting the raw data)
//    
//    NSData * imageData = UIImagePNGRepresentation(self.filteredImage);
//    
//    // create a Parse File with the raw data, so that it cn store the image
//    
//    PFFile * imageFile = [PFFile fileWithData:imageData];
//    
//    // let selfie = PFObject(className:"Selfie")
//    
//    selfie[@"image"] = imageFile; // pffile column
//    
//    selfie[@"caption"] = self.captionTextView.text; // string column
//    
//    selfie[@"user"] = [PFUser currentUser]; // pointer -> _User column
//    
//    // selfie["caption] = captionTextView.text
//    
//    [selfie saveInBackground];
//    
//    
//    
//}
//
//
///*
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}
//*/
//
//@end
